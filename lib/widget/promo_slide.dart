import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:nonton_id_by_ferian/screen/navbar/tiket_screen/tiket.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Promo extends StatefulWidget {
  Promo({super.key});

  @override
  State<Promo> createState() => _PromoState();
}

class _PromoState extends State<Promo> {
  CarouselController btnCarouselController = CarouselController();
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: 163.0,
            autoPlay: true,
            scrollPhysics: BouncingScrollPhysics(),
            enlargeCenterPage: true,
            initialPage: 0,
            autoPlayCurve: Curves.fastOutSlowIn,
            viewportFraction: 0.7,
            onPageChanged: (index, reason) {
              setState(() {
                activeIndex = index;
              });
            },
          ),
          carouselController: btnCarouselController,
          items: [1, 2, 3, 4, 5].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Tiket()),
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.all(0),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Color(0XFF867AD2), Color(0XFF494080)],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage("assets/promoframe.png"),
                      ),
                    ),
                  ),
                );
              },
            );
                }).toList(),
        ),
        SizedBox(
          height: 17,
        ),
        AnimatedSmoothIndicator(
          activeIndex: activeIndex,
          count: 5,
          effect: ExpandingDotsEffect(
            dotWidth: 12.0,
            dotHeight: 7.0,
            dotColor: Color(0XFF2A2740),
            activeDotColor: Color(0XFF4D438A),
          ),
        )
      ],
    );
  }
}