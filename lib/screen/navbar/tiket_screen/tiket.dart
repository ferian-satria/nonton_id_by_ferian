import 'package:flutter/material.dart';
import 'package:nonton_id_by_ferian/screen/navbar/tiket_screen/sedang_tayang.dart';
import 'package:nonton_id_by_ferian/screen/navbar/tiket_screen/akan_tayang.dart';

class Tiket extends StatelessWidget {
  const Tiket({Key? key});

  @override
  Widget build(BuildContext context) {
    TabBar myTabBar = const TabBar(
      tabs: <Widget>[
        Tab(text: 'Sedang Tayang'),
        Tab(text: 'Akan Datang'),
      ],
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0XFF2F2C44),
            automaticallyImplyLeading: true,
            title: const Center(
              child: Text(
                'Daftar Film',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),
            bottom: PreferredSize(
                preferredSize: Size.fromHeight(myTabBar.preferredSize.height),
                child:
                    Container(color: const Color(0XFF1C1A29), child: myTabBar)),
          ),
          body: const TabBarView(
            children: <Widget>[
              STayang(),
              ATayang(),
            ],
          ),
        ),
      ),
    );
  }
}
