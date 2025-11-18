import 'package:flutter/material.dart';
import 'package:kickoff_shop/models/product_entry.dart';
import 'package:kickoff_shop/widgets/left_drawer.dart';
import 'package:kickoff_shop/screens/product_detail.dart';
import 'package:kickoff_shop/widgets/product_entry_card.dart';
import 'package:provider/provider.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';

class ProductEntryListPage extends StatefulWidget {
  final bool mineOnly;

  const ProductEntryListPage({super.key, this.mineOnly = false});

  @override
  State<ProductEntryListPage> createState() => _ProductEntryListPageState();
}

class _ProductEntryListPageState extends State<ProductEntryListPage> {
  Future<List<ProductEntry>> fetchNews(
    CookieRequest request, {
    bool mineOnly = false,
  }) async {
    // To connect Android emulator with Django on localhost, use URL http://10.0.2.2/
    // If you using chrome,  use URL http://localhost:8000

    final url = mineOnly
        ? 'http://localhost:8000/json/?mine=true'
        : 'http://localhost:8000/json/';
    final response = await request.get(url);

    // Decode response to json format
    var data = response;

    // Convert json data to ProductEntry objects
    List<ProductEntry> listNews = [];
    for (var d in data) {
      if (d != null) {
        listNews.add(ProductEntry.fromJson(d));
      }
    }

    // If mineOnly requested, first trust the server-side filter (if backend supports ?mine=true)
    if (mineOnly) {
      if (listNews.isNotEmpty) {
        // server returned filtered results
        return listNews;
      }

      // server returned empty list for ?mine=true — try client-side fallback:
      // fetch all products and filter by current user id
      final allResponse = await request.get('http://localhost:8000/json/');
      var allData = allResponse;
      List<ProductEntry> allProducts = [];
      for (var d in allData) {
        if (d != null) allProducts.add(ProductEntry.fromJson(d));
      }

      final int? currentUserId = await _fetchCurrentUserId(request);
      if (currentUserId == null) {
        // Could not determine current user; return empty list to indicate no items
        return [];
      }
      return allProducts.where((p) => p.userId == currentUserId).toList();
    }

    return listNews;
  }

  // Try several common endpoints to obtain the logged-in user's id via CookieRequest.
  // Returns null if none succeed.
  Future<int?> _fetchCurrentUserId(CookieRequest request) async {
    final candidates = [
      'http://localhost:8000/api/me/',
      'http://localhost:8000/api/profile/',
      'http://localhost:8000/profile/',
      'http://localhost:8000/get_user/',
      'http://localhost:8000/auth/get_user/',
      'http://localhost:8000/current_user/',
      'http://localhost:8000/accounts/profile/',
    ];

    for (final url in candidates) {
      try {
        final resp = await request.get(url);
        if (resp == null) continue;
        if (resp is Map) {
          if (resp['id'] != null) return resp['id'] as int;
          if (resp['user_id'] != null) return resp['user_id'] as int;
          if (resp['pk'] != null) return resp['pk'] as int;
        }
      } catch (_) {
        // ignore and try next
      }
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    final request = context.watch<CookieRequest>();
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.mineOnly ? 'My Products' : 'All Products'),
      ),
      drawer: const LeftDrawer(),
      body: FutureBuilder(
        future: fetchNews(request, mineOnly: widget.mineOnly),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.data == null) {
            return const Center(child: CircularProgressIndicator());
          } else {
            if (!snapshot.hasData) {
              return const Column(
                children: [
                  Text(
                    'There are no news in football news yet.',
                    style: TextStyle(fontSize: 20, color: Color(0xff59A5D8)),
                  ),
                  SizedBox(height: 8),
                ],
              );
            } else {
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (_, index) => ProductEntryCard(
                  product: snapshot.data![index],
                  onTap: () {
                    // Navigate to product detail page
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            ProductDetailPage(product: snapshot.data![index]),
                      ),
                    );
                  },
                ),
              );
            }
          }
        },
      ),
    );
  }
}
