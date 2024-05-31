import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nonton_id_by_ferian/constant/app_colors.dart';
import 'package:nonton_id_by_ferian/screen/dashboard.dart';
import 'package:nonton_id_by_ferian/screen/registration.dart';
import 'package:nonton_id_by_ferian/widget/data_form.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  GlobalKey<FormState> formkey = GlobalKey();
  TextEditingController usernameController = TextEditingController();
  TextEditingController passswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appColors.background,
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 43,
        ),
        child: Form(
          key: formkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset('assets/nonton_id.svg'),
              SizedBox(
                height: 80,
              ),
              const Text(
                'Masuk',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 36,
              ),
              DataForm(
                hintText: 'Username',
                icon: Icons.person_2_outlined,
              ),
              const SizedBox(
                height: 12,
              ),
              DataForm(
                hintText: 'Password',
                icon: Icons.lock_outline_rounded,
                obscureText: true,
              ),
              const SizedBox(
                height: 32,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Belum Punya Akun? ',
                    style: TextStyle(
                      color: Colors.white38,
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                  ),
                    const SizedBox(width: 10),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Registration()),
                        );
                      },
                    child: Text(
                      'Daftar',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
        child: Container(
          decoration: BoxDecoration(
            gradient: appColors.accent,
            borderRadius: BorderRadius.circular(10),
          ),
          child: ElevatedButton(
            onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Dashboard()),
                        );
                      },
            child: Text(
              'Masuk',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 18,
              ),
            ),
            style: ElevatedButton.styleFrom(
              shadowColor: Colors.transparent,
              backgroundColor: Colors.transparent,
            ),
          ),
        ),
      ),
    );
  }
}
