import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class Movie3Screen extends StatefulWidget {
  const Movie3Screen({Key? key}) : super(key: key);
  @override
  State<Movie3Screen> createState() => _Movie3ScreenState();
}

class _Movie3ScreenState extends State<Movie3Screen> {
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
                      'assets/movies3.png',
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
                    'assets/slide3.png',
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
                          'The Ministry Of Ungentlemanly Warfare',
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
                              'Guy Ritchie',
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
                              'Guy Ritchie',
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
                              'Action',
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
                              'Lionsgate',
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
                              '7.2/10',
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
                              '120 Min',
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
                              '13+',
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
                                          'Film ini menggambarkan versi fiksi dari Operasi Postmaster selama Perang Dunia II. Naskahnya didasarkan pada buku Churchill’s Secret Warriors: The Explosive True Story of the Special Forces Desperadoes of WWII karya Damien Lewis. Operasi SOE, sebuah organisasi rahasia Inggris yang dibentuk pada tahun 1940 atas dorongan Perdana Menteri Winston Churchill, memberikan kontribusi signifikan terhadap kemenangan Sekutu atas Nazi Jerman.',
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