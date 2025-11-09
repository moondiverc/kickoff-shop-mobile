import 'package:flutter/material.dart';
import 'package:kickoff_shop/screens/productlist_form.dart';
import 'package:kickoff_shop/screens/menu.dart';

class ItemCard extends StatelessWidget {
  // Menampilkan kartu dengan ikon dan nama.

  final ItemHomepage item;

  const ItemCard(this.item, {super.key});

  @override
  Widget build(BuildContext context) {
    // Tentukan warna latar belakang sesuai properti item.color
    final Color bg = item.color;
    // Pilih warna teks/ikon yang kontras (putih/ hitam) berdasarkan luminance
    final Color fg = bg.computeLuminance() > 0.5 ? Colors.black : Colors.white;

    return Material(
      // Menentukan warna latar belakang dari item
      color: bg,
      // Membuat sudut kartu melengkung.
      borderRadius: BorderRadius.circular(12),

      child: InkWell(
        // Aksi ketika kartu ditekan.
        onTap: () {
          // Menampilkan pesan SnackBar saat kartu ditekan.
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(content: Text("Kamu telah menekan tombol ${item.name}")),
            );
          if (item.name == "Create Product") {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ProductFormPage()),
            );
          }
        },
        // Container untuk menyimpan Icon dan Text
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Column(
              // Menyusun ikon dan teks di tengah kartu.
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(item.icon, color: fg, size: 30.0),
                const Padding(padding: EdgeInsets.all(3)),
                Text(
                  item.name,
                  textAlign: TextAlign.center,
                  style: TextStyle(color: fg),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
