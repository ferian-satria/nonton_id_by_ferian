import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nonton_id_by_ferian/constant/app_colors.dart';
import 'package:nonton_id_by_ferian/screen/dashboard.dart';
import 'package:nonton_id_by_ferian/screen/login.dart';
import 'package:nonton_id_by_ferian/widget/data_form.dart';

class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  GlobalKey<FormState> formkey = GlobalKey();
  TextEditingController emailController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  TextEditingController passswordController = TextEditingController();
  TextEditingController copasswodController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 43,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset('assets/nonton_id.svg'),
            const SizedBox(
              height: 80,
            ),
            const Text(
              'Daftar',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              height: 36,
            ),
            DataForm(
              hintText: 'Alamat Email',
              icon: Icons.mail_outline,
            ),
            const SizedBox(
              height: 12,
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
              height: 12,
            ),
            DataForm(
              hintText: 'Ulangi Password',
              icon: Icons.lock_outline_rounded,
              obscureText: true,
            ),
            const SizedBox(
              height: 32,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Sudah Punya Akun? ',
                  style: TextStyle(
                    color: Colors.white38,
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Login()),
                    );
                  },
                  child: const Text(
                    'Masuk',
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
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
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
            style: ElevatedButton.styleFrom(
              shadowColor: Colors.transparent,
              backgroundColor: Colors.transparent,
            ),
            child: const Text(
              'Daftar',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 18,
              ),
            ),
          ),
        ),
      ),
    );
  }
}