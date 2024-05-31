import 'package:nonton_id_by_ferian/screen/splash.dart';
import 'package:nonton_id_by_ferian/constant/app_colors.dart';
import 'package:nonton_id_by_ferian/movies/movie1.dart';
import 'package:nonton_id_by_ferian/movies/movie2.dart';
import 'package:nonton_id_by_ferian/movies/movie3.dart';
import 'package:nonton_id_by_ferian/movies/movie4.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
            title: 'Nonton ID',
            theme: ThemeData(
              scaffoldBackgroundColor: appColors.background,
              useMaterial3: true,
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple)
                  .copyWith(background: appColors.background),
            ),
      debugShowCheckedModeBanner: false,
      routes: {
        '/movie1': (context) => const Movie1Screen(),
        '/movie2': (context) => const Movie2Screen(),
        '/movie3': (context) => const Movie3Screen(),
        '/movie4': (context) => const Movie4Screen(),
      },
      home: const Splash(),
    );
  }
}