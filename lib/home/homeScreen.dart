import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
        width: 140.w,
        height: 40.h,
        child: FloatingActionButton(
          onPressed: () {},
          backgroundColor: const Color(0xFFCA0D0E),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          child: SingleChildScrollView(
            child: Center(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.add,
                    size: 30,
                    color: Colors.white,
                  ),
                  SizedBox(width: 2),
                  Text(
                    "إضافة صيانة جديدة",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w600,
                        fontFamily: "Cairo-Medium"),
                  ),
                ],
              ),
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
                    width: 75.w,
                    height: 75.h,
                  ),
                  Text(
                    "أحمد محمد",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w700,
                        fontFamily: ("Cairo-Bold")),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "123458",
                    style: TextStyle(
                        color: Color(0xFF696969),
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w400,
                        fontFamily: ("Cairo-Medium")),
                  ),
                ],
              ),
            ),
          ),
          Expanded(child: TabsWidget())
        ],
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
      title: Text(
        "الملف الشخصي",
        style: TextStyle(
          fontSize: 16.sp,
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
