import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class Movie1Screen extends StatefulWidget {
  const Movie1Screen({Key? key}) : super(key: key);
  @override
  State<Movie1Screen> createState() => _Movie1ScreenState();
}

class _Movie1ScreenState extends State<Movie1Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1c1a29),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: 213,
              color: Colors.black,
              child: Stack(
                children: [
                  ColorFiltered(
                    colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.5),
                      BlendMode.dstATop,
                    ),
                    child: Image.asset(
                      'assets/movies1.png',
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: 213,
                    ),
                  ),
                  Positioned(
                    child: GestureDetector(
                      onTap: () {},
                      child: const Center(
                        child: Icon(
                          Icons.play_circle,
                          color: Colors.white60,
                          size: 55,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 200),
                  child: Image.asset(
                    'assets/slide1.png',
                    width: 145,
                    height: 230,
                  ),
                ),
    const SizedBox(width: 10),
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(top: 160, right: 40),
                    child: Column(
                      children: [
                        Text(
                          'The Garfield Movie',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Text(
                              'Director',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white30),
                            ),
                            Spacer(flex: 1),
                            Text(
                              'Mark Dindal',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey),
                            ),
                          ],
                        ),
                        SizedBox(height: 5),
                        Row(
                          children: [
                            Text(
                              'Writter',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white30),
                            ),
                            Spacer(flex: 1),
                            Text(
                              'David Reynolds',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey),
                            ),
                          ],
                        ),
                        SizedBox(height: 5),
                        Row(
                          children: [
                            Text(
                              'Genre',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white30),
                            ),
                            Spacer(flex: 1),
                            Text(
                              'Animation',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey),
                            ),
                          ],
                        ),
                        SizedBox(height: 5),
                        Row(
                          children: [
                            Text(
                              'PH',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white30),
                            ),
                            Spacer(flex: 1),
                            Text(
                              'DNEG Animation',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 430, left: 25, right: 25),
                  child: Row(
                    children: [
                      Container(
                        width: 98,
                        height: 58,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Color(0xFF1c1a29),
                          border: Border.all(
                            color: Colors.grey,
                          ),
                        ),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
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
                            Text(
                              '8.0/10',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Spacer(flex: 1),
                      Container(
                        width: 98,
                        height: 58,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: const Color(
                              0xFF1c1a29), 
                          border: Border.all(
                            color: Colors.grey,
                          ),
                        ),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Duration',
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              '101 Min',
                              style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                      ),
                      const Spacer(flex: 1),
                      Container(
                        width: 98,
                        height: 58,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: const Color(
                              0xFF1c1a29),
                          border: Border.all(
                            color: Colors.grey,
                          ),
                        ),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'P-G',
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              'SU',
                              style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                          Column(
                            children: [
                              const Text(
                                'Sinopsis',
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Container(
                                width: double.infinity,
                                height: 240,
                                decoration: const BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Color(0xFF1c1a29),
                                      Color(0xFF1c1a29),
                                    ],
                                  ),
                                ),
                                child: SingleChildScrollView(
                                  child: ConstrainedBox(
                                    constraints: const BoxConstraints(
                                      minHeight: 240,
                                    ),
                                    child: ShaderMask(
                                      shaderCallback: (Rect bounds) {
                                        return const LinearGradient(
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                          colors: [Colors.grey, Colors.transparent],
                                        ).createShader(bounds);
                                      },
                                      blendMode: BlendMode.dstIn,
                                      child: const Padding(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 16.0,
                                          vertical: 12.0,
                                        ),
                                        child: Text(
                                          'Film petualangan komedi animasi asal Amerika yang dirilis pada tahun 2024 berdasarkan komik strip Garfield karya Jim Davis. Film ini diproduksi oleh Columbia Pictures dan Alcon Entertainment, dianimasikan oleh DNEG Animation, dan didistribusikan oleh Sony Pictures Releasing. Sementara itu, film ini disutradarai oleh Mark Dindal dari skenario yang ditulis oleh David Reynolds dan tim penulis Paul A. Kaplan dan Mark Torgove. Dalam film ini, Chris Pratt mengisi suara karakter utama, bersama dengan pengisi suara Samuel L. Jackson, Hannah Waddingham, Ving Rhames, Nicholas Hoult, Cecily Strong, Harvey Guillén, Brett Goldstein, Bowen Yang, dan Snoop Dogg. Sinopsisnya berfokus pada awal mula pertemuan Garfield dengan Jon Arbuckle yang menjadi majikannya setelah Garfield bertemu dengan ayahnya yang telah lama hilang. Keduanya kemudian terlibat dalam petualangan yang mengharuskan mereka meninggalkan kehidupan yang nyaman dan bergabung dalam sebuah atraksi perampokan yang kocak dan berisiko tinggi',
                                          textAlign: TextAlign.justify, 
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                Padding(
                  padding: const EdgeInsets.only(top: 0,),
                  child: SizedBox(
                    width: 350,
                    child: TextButton.icon(
                      onPressed: () {
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                          Color.fromARGB(255, 105, 86, 227),
                        ),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      ),
                      icon: Icon(
                        Iconsax.ticket,
                        color: Colors.white,
                      ),
                      label: const Text(
                        'Beli Tiket',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ), //
          ],
        ),
      ),
    );
  }
}