import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Bioskop extends StatelessWidget {
  const Bioskop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
            automaticallyImplyLeading: false,
            centerTitle: true,
            title: const Text(
              'Bioskop yang tersedia di Kota "Padang"',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 18,
          ),
        ),
        backgroundColor: const Color(0xFF2F2C44),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Container(
        color: const Color(0xFF1c1a29),
        child: SafeArea(
          child: SingleChildScrollView(
          child: Column(
            children: [
              const Divider(),
              const SizedBox(
                height: 20,
              ),
              search_bar(),
              const SizedBox(
                height: 30,
              ),
              const CustomExpansionTile(
                title: 'CGV Pasar Raya',
                subtitle: 'Harga Layanan',
                description: 'Rp. 30.000',
                imagePath: 'assets/cgv.png',
              ),
              const SizedBox(
                height: 20,
              ),
              const CustomExpansionTile(
                title: 'XXI Transmart',
                subtitle: 'Harga Layanan',
                description: 'Rp. 45.000 ~ 110.000',
                imagePath: 'assets/xxi.png',
              ),
              const SizedBox(
                height: 20,
              ),
              const CustomExpansionTile(
                title: 'XXI Plaza Andalas',
                subtitle: 'Harga Layanan',
                description: 'Rp. 30.000',
                imagePath: 'assets/xxi.png',
              ),
            ],
          ),
        ),
      ),
    )
    );
  }

  GestureDetector search_bar() {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 340,
        height: 38,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color(0xFF2F2C44),
        ),
        child: const Row(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Icon(
                Icons.search,
                color: Colors.grey,
              ),
            ),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Cari Bioskop',
                  hintStyle: TextStyle(color: Colors.grey),
                  border: InputBorder.none,
                  contentPadding:
                      EdgeInsets.only(bottom: 13),
                ),
                style: TextStyle(color: Colors.grey),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomExpansionTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final String description;
  final String imagePath;

  const CustomExpansionTile({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.description,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: SizedBox(
        child: Row(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: 34,
                  height: 34,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Image.asset(
                  imagePath,
                  width: 30,
                  height: 30,
                ),
              ],
            ),
            const SizedBox(
              width: 20,
            ),
            Text(
              title,
              style: const TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
      subtitle: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            subtitle,
            style: const TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            description,
            style: const TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
      children: <Widget>[
        ListTile(
          title: Text(
            description,
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }
}
