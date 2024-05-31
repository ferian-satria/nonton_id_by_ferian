import 'package:flutter/cupertino.dart';
import 'package:iconsax/iconsax.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nonton_id_by_ferian/screen/navbar/profil.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:nonton_id_by_ferian/screen/navbar/tiket_screen/tiket.dart';
import 'package:nonton_id_by_ferian/widget/promo_slide.dart';

class Home extends StatelessWidget {
  final List<String> imageList = [
    "assets/slide1.png",
    "assets/slide2.png",
    "assets/slide3.png",
    "assets/slide4.png",
  ];
  final List<String> movieRoutes = [
    '/movie1',
    '/movie2',
    '/movie3',
    '/movie4',
  ];

  Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Profil()),
                      );
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        'assets/mini_pp.jpg',
                        width: 30,
                        height: 30,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(padding: EdgeInsets.symmetric()),
                      SvgPicture.asset('assets/location.svg'),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Padang',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      const Icon(
                        Iconsax.notification,
                        color: Colors.white,
                        size: 23,
                      ),
                      Positioned(
                        right: 0,
                        top: 0,
                        child: Container(
                          width: 9,
                          height: 9,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(4.5),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Promo(),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Sedang Tayang',
                    style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const Tiket()),
                          );
                        },
                        child: const Text(
                          'Lihat Semua',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      SvgPicture.asset('assets/arrow.svg')
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              color: const Color(0XFF1C1A29),
              height: 300,
              child: ImageCard(
                imageList: imageList,
                movieTitles: const [
                  'The Garfield Movie',
                  'Furiosa: A Mad Max Saga',
                  'The Ministry Of Ungentlemanly Warfare',
                  'Deadpool 3',
                ],
                starRatings: const [
                  8.5,
                  7.3,
                  7.2,
                  8,7
                ],
                movieRoutes: movieRoutes,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              children: [
                const Text(
                  'Voucher Deals',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w700),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: SizedBox(
                    height: 150,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            width: 213,
                            height: 131,
                            padding: EdgeInsets.all(0),
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [Color(0XFF867AD2), Color(0XFF494080)],
                              ),
                              image: DecorationImage(
                                image: AssetImage("assets/deals1.png"),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                            width: 20),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            width: 213,
                            height: 131,
                            padding: EdgeInsets.all(0),
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [Color(0XFF867AD2), Color(0XFF494080)],
                              ),
                              image: DecorationImage(
                                image: AssetImage("assets/deals2.png"),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                            width: 20),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            width: 213,
                            height: 131,
                            padding: EdgeInsets.all(0),
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [Color(0XFF494080), Color(0XFF867AD2)],
                              ),
                              image: DecorationImage(
                                image: AssetImage("assets/deals3.png"),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ImageCard extends StatelessWidget {
  const ImageCard({
    Key? key,
    required this.imageList,
    required this.movieTitles,
    required this.starRatings,
    required this.movieRoutes,
  }) : super(key: key);

  final List<String> imageList;
  final List<String> movieTitles;
  final List<double> starRatings;
  final List<String> movieRoutes;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: imageList.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Container(
          margin: const EdgeInsets.only(right: 5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 300,
                child: Stack(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, movieRoutes[index]);
                      },
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: 8.0,
                          bottom: 8.0,
                          left: 8.0,
                          right: 10.0,
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            imageList[index],
                            fit: BoxFit.cover,
                            height: 250,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 20,
                      left: 10,
                      right: 10,
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        alignment: Alignment.centerLeft,
                        child: Container(
                          width: MediaQuery.of(context).size.width -
                              168,
                          child: Row(
                            children: [
                              Expanded(
                                child: Text(
                                  movieTitles[index],
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 10,
                      right: 10,
                      child: Container(
                        height: 1,
                        color: Colors.grey,
                      ),
                    ),
                    Positioned(
                      bottom: 5,
                      left: 10,
                      child: Row(
                        children: [
                          RatingBar.builder(
                            initialRating: starRatings[index],
                            minRating: 1,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemSize: 15,
                            itemPadding: const EdgeInsets.symmetric(
                                horizontal: 1.0),
                            itemBuilder: (context, _) => const Icon(
                              Icons.star,
                              color: Colors
                                  .amber,
                            ),
                            unratedColor:
                                Colors.white,
                            onRatingUpdate: (rating) {},
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
