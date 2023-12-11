import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../models/FilesModel.dart';

class FileWidget extends StatelessWidget {
  FileWidget(this.file, {Key? key}) : super(key: key);
  Files file;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Container(
        width: double.infinity,
        height: 63,
        decoration: BoxDecoration(
            color: const Color(0xFFF6F6F6),
            borderRadius: BorderRadius.circular(8)),
        child: ListTile(
          leading: Image.asset(
            "assets/images/image 1.png",
            width: 30.w,
            height: 27.h,
          ),
          title: Text("رقم الصيانة : ${file.mainNumber}",
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: ("Cairo-Medium"),
                  fontWeight: FontWeight.w600,
                  fontSize: 12.sp)),
          trailing: Text(file.date,
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: ("Cairo-Medium"),
                  fontWeight: FontWeight.w600,
                  fontSize: 12.sp)),
        ),
      ),
    );
  }
}
