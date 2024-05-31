import 'package:flutter/material.dart';

class JadwalTiket extends StatefulWidget {
  const JadwalTiket({Key? key}) : super(key: key);

  @override
  State<JadwalTiket> createState() => _JadwalTiketState();
}

class _JadwalTiketState extends State<JadwalTiket> {
 
  List<Map<String, String>> dates = [
    {"day": "Mon", "description": "Monday"},
    {"day": "Tue", "description": "Tuesday"},
    {"day": "Wed", "description": "Wednesday"},
    {"day": "Thu", "description": "Thursday"},
    {"day": "Fri", "description": "Friday"},
    {"day": "Sat", "description": "Saturday"},
    {"day": "Sun", "description": "Sunday"},
  ];

  int selectedDateIndex = 0;

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Pilih Jadwal dan Bioskop',
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
              schduleList(now),
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
                subtitle: 'Regular',
                description: 'Rp. 30.000',
                imagePath: 'assets/cgv.png',
              ),
              const SizedBox(
                height: 20,
              ),
              const CustomExpansionTile(
                title: 'XXI Transmart',
                subtitle: 'Regular',
                description: 'Rp. 45.000',
                imagePath: 'assets/xxi.png',
              ),
              const SizedBox(
                height: 20,
              ),
              const CustomExpansionTile(
                title: 'XXI Plaza Andalas',
                subtitle: 'Regular',
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

  Container schduleList(DateTime now) {
    return Container(
      color: const Color(0xFF1c1a29),
      child: Column(
        children: [
          SizedBox(
            height: 65,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: dates.length,
              itemBuilder: (context, index) {
                DateTime date = now.add(Duration(days: index - now.weekday));
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedDateIndex = index;
                    });
                  },
                  child: Container(
                    alignment: Alignment.center,
                    width: 80,
                    color: selectedDateIndex == index
                        ? Colors.blueGrey
                        : Colors.transparent,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          dates[index]["day"]!,
                          style: TextStyle(
                            color: selectedDateIndex == index
                                ? Colors.white
                                : Colors.grey,
                            fontSize: selectedDateIndex == index
                                ? 20
                                : 16,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          date.day.toString(),
                          style: TextStyle(
                            color: selectedDateIndex == index
                                ? Colors.white
                                : Colors.grey,
                            fontSize: selectedDateIndex == index
                                ? 20
                                : 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
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
