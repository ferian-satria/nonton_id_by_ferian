import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:nonton_id_by_ferian/screen/navbar/bioskop.dart';
import 'package:nonton_id_by_ferian/screen/navbar/home.dart';
import 'package:nonton_id_by_ferian/screen/navbar/profil.dart';
import 'package:nonton_id_by_ferian/screen/navbar/tiket_screen/tiket.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _bodyWidgets()[selectedIndex],
      bottomNavigationBar: Theme(
        data: ThemeData(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        child: SizedBox(
          height: 83,
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Color(0XFFF2C94C),
            unselectedItemColor: Colors.white,
            backgroundColor: Color(0XFF2F2C44),
            useLegacyColorScheme: false,
            currentIndex: selectedIndex,
            onTap: (index) {
              setState(() {
                selectedIndex = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_filled), label: 'Home'),
              BottomNavigationBarItem(
                icon: Icon(Ionicons.ticket), label: 'Tiket'),
              BottomNavigationBarItem(
                icon: Icon(Ionicons.film), label: 'Bioskop'),
              BottomNavigationBarItem(
                icon: Icon(Icons.person), label: 'Profil'),
            ],
          ),
        ),
      ),
    );
  }
  List<Widget> _bodyWidgets() {
    return [
      Home(),
      Tiket(),
      Bioskop(),
      Profil(),
    ];
  }
}