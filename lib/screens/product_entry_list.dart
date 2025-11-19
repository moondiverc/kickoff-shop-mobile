import 'package:flutter/material.dart';
import 'package:kickoff_shop/models/product_entry.dart';
import 'package:kickoff_shop/widgets/left_drawer.dart';
import 'package:kickoff_shop/screens/product_detail.dart';
import 'package:kickoff_shop/widgets/product_entry_card.dart';
import 'package:provider/provider.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';

class ProductEntryListPage extends StatefulWidget {
  final String initialFilter;

  const ProductEntryListPage({super.key, required this.initialFilter});

  @override
  State<ProductEntryListPage> createState() => _ProductEntryListPageState();
}

class _ProductEntryListPageState extends State<ProductEntryListPage> {
  late String _filterType;
  Key _futureBuilderKey = UniqueKey();

  @override
  void initState() {
    super.initState();
    _filterType = widget.initialFilter;
  }

  Future<List<ProductEntry>> fetchNews(CookieRequest request) async {
    final url = 'http://localhost:8000/json-filtered/?filter=$_filterType';

    final response = await request.get(url);

    var data = response;

    List<ProductEntry> listNews = [];
    for (var d in data) {
      if (d != null) {
        listNews.add(ProductEntry.fromJson(d));
      }
    }
    return listNews;
  }

  void _setFilter(String newFilter) {
    setState(() {
      _filterType = newFilter;
      _futureBuilderKey = UniqueKey();
    });
  }

  @override
  Widget build(BuildContext context) {
    final request = context.watch<CookieRequest>();
    return Scaffold(
      appBar: AppBar(
        title: Text(_filterType == 'all' ? 'All Products' : 'My Products'),
        actions: [
          PopupMenuButton<String>(
            initialValue: _filterType,
            onSelected: _setFilter,
            itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
              const PopupMenuItem<String>(
                value: 'all',
                child: Text('All Products'),
              ),
              const PopupMenuItem<String>(
                value: 'my',
                child: Text('My Products'),
              ),
            ],
            icon: const Icon(Icons.filter_list),
          ),
        ],
      ),
      drawer: const LeftDrawer(),
      body: FutureBuilder(
        key: _futureBuilderKey,
        future: fetchNews(request),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else {
            if (!snapshot.hasData || snapshot.data!.isEmpty) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      _filterType == 'all'
                          ? 'No products found.'
                          : 'You haven\'t added any products yet.',
                      style: const TextStyle(
                        fontSize: 20,
                        color: Color(0xff59A5D8),
                      ),
                    ),
                    const SizedBox(height: 8),
                  ],
                ),
              );
            } else {
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (_, index) => ProductEntryCard(
                  product: snapshot.data![index],
                  onTap: () {
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
