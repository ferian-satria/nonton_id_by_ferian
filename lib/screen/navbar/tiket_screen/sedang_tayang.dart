import 'package:flutter/material.dart';
import 'package:nonton_id_by_ferian/screen/navbar/tiket_screen/beli_tiket.dart';

class TiketWidget extends StatelessWidget {
  final String imagePath;
  final String title;
  final String pg;
  final String genre;
  final Widget redirectPage;

  const TiketWidget({
    Key? key,
    required this.imagePath,
    required this.title,
    required this.pg,
    required this.genre,
    required this.redirectPage,
  }) : super(key: key);

    @override
    Widget build(BuildContext context) {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
  SizedBox(
    height: 210,
    child: Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: Image.asset(
        imagePath,
        width: 130,
        height: 300,
      ),
    ),
  ),
        const SizedBox(width: 10),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(top: 20, right: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 10),
                const Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 18,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 18,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 18,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 18,
                    ),
                    Icon(
                      Icons.star_half,
                      color: Colors.yellow,
                      size: 18,
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    const Text(
                      'P-G',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Colors.white30,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Text(
                      pg,
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Text(
                      'Genre',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Colors.white30,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Text(
                      genre,
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(right: 95),
                  child: SizedBox(
                    width: 150,
                    height: 40,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                redirectPage,
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF6956E3),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      child: const Text(
                        'Beli Tiket',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                          overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class STayang extends StatelessWidget {
  const STayang({Key? key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFF1c1a29),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TiketWidget(
              imagePath: 'assets/slide1.png',
              title: 'The Garfield Movie',
              pg: 'SU',
              genre: 'Animation',
              redirectPage: BeliTiket(
                judul: 'The Garfield Movie',
              ),
            ),
            TiketWidget(
              imagePath: 'assets/slide2.png',
              title: 'Furiosa: A Mad Max Saga',
              pg: '13+',
              genre: 'Action',
              redirectPage: BeliTiket(
                judul: 'Furiosa: A Mad Max Saga',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
