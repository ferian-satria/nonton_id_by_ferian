import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:nonton_id_by_ferian/screen/navbar/home.dart';

class Profil extends StatelessWidget {
  const Profil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF1c1a29),
        leading: InkWell(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Home()));
          },
          child: const Icon(
            Icons.arrow_back_rounded,
            color: Colors.white,  
          ),
        ),
      ),
      backgroundColor: const Color(0xFF1c1a29),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 14, right: 14),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    width: 360,
                    height: 130,
                    color: const Color(0xFF2F2C44),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: SizedBox(
                              child: Image.asset(
                                'assets/mini_pp.jpg',
                                width: 90,
                                height: 90,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                            width: 10),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 20, right: 1, left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Ferian Satria',
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                  ),
                                ),
                                const Row(
                                  children: [
                                    Text(
                                      'Since 21 Mei 2024',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 10),
                                Padding(
                                  padding: const EdgeInsets.only(right: 8.0),
                                  child: SizedBox(
                                    width: 130,
                                    height: 30,
                                    child: ElevatedButton(
                                      onPressed: () {
                                      },
                                      style: ElevatedButton.styleFrom(
                                        padding: EdgeInsets.zero,
                                        backgroundColor: Color.fromARGB(255, 245, 161, 5),
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Expanded(
                                            child: Text(
                                              'Member Gold',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(color: Colors.white),
                                            ),
                                          ),
                                          Icon(
                                            Icons.arrow_right_outlined,
                                            color: Colors.white,
                                          ),
                                        ],
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
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 14, right: 14),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    width: 360,
                    height: 100,
                    color: const Color(0xFF2F2C44),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 20, left: 20),
                          child: Column(
                            children: [
                              Icon(
                                Ionicons.wallet,
                                color: Colors.white,
                              ),
                              SizedBox(height: 10),
                              Text(
                                'Wallet',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 20, left: 40),
                          child: Column(
                            children: [
                              Icon(
                                Ionicons.star,
                                color: Colors.white,
                              ),
                              SizedBox(height: 10),
                              Text(
                                'Points',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white),
                              )
                            ],
                          ),
                        ),
                        SizedBox(width: 20),
                        Padding(
                          padding: EdgeInsets.only(top: 20, left: 20),
                          child: Column(
                            children: [
                              Icon(
                                Icons.local_offer,
                                color: Colors.white,
                              ),
                              SizedBox(height: 10),
                              Text(
                                'Voucher',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white),
                              )
                            ],
                          ),
                        ),
                        SizedBox(width: 20),
                        Padding(
                          padding:
                              EdgeInsets.only(top: 20, left: 20, right: 10),
                          child: Column(
                            children: [
                              Icon(
                                Icons.payments_sharp,
                                color: Colors.white,
                              ),
                              SizedBox(height: 10),
                              Text(
                                'PayLater',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const ContainerProfile(
                title: 'Saved',
                description: 'Favoritkan film pilihanmu untuk rencana pemesanan',
              ),
              const SizedBox(
                height: 5,
              ),
              const ContainerProfile(
                title: 'History',
                description: 'Riwayat film dan bioskop yang telah kamu telusuri',
              ),
              const SizedBox(
                height: 5,
              ),
              const ContainerProfile(
                title: 'My Ratings',
                description: 'Film yang telah kamu nilai',
              ),
              const SizedBox(
                height: 5,
              ),
              const ContainerProfile(
                title: 'Help Center',
                description: 'Bantuan terkait tranksasi dan akun',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ContainerProfile extends StatelessWidget {
  final String? title;
  final String? description;

  const ContainerProfile({
    Key? key,
    @required this.title,
    @required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 14, right: 14),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          width: 360,
          height: 70,
          color: const Color(0xFF2F2C44),
          child: Padding(
            padding: const EdgeInsets.only(left: 20, top: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title!,
                  style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 14),
                ),
                Text(
                  description!,
                  style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 10),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
