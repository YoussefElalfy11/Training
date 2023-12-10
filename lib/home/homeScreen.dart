import 'package:flutter/material.dart';

import 'tabs/tabsWidget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static const String routeName = 'home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBar(),
      floatingActionButton: SizedBox(
        width: 140,
        height: 40,
        child: FloatingActionButton(
          onPressed: () {},
          backgroundColor: const Color(0xFFCA0D0E),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          child: const Center(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.add, size: 22, color: Colors.white),
                SizedBox(width: 2),
                Text(
                  "إضافة صيانة جديدة",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      fontFamily: "Cairo-Medium"),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Container(
              margin: const EdgeInsets.only(top: 25, bottom: 15),
              child: Column(
                children: [
                  Image.asset(
                    "assets/images/image 1.png",
                    width: 77,
                    height: 77,
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    "أحمد محمد",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        fontFamily: ("Cairo-Bold")),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    "123458",
                    style: TextStyle(
                        color: Color(0xFF696969),
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        fontFamily: ("Cairo-Medium")),
                  ),
                ],
              ),
            ),
          ),
          TabsWidget()
        ],
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
      title: const Text(
        "الملف الشخصي",
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w700,
          color: Colors.black,
          fontFamily: ("Cairo-Bold"),
        ),
      ),
      elevation: 0.0,
      backgroundColor: Colors.white,
      actions: const [
        Icon(
          Icons.arrow_forward_rounded,
        ),
      ],
      centerTitle: true,
    );
  }
}
