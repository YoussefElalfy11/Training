import 'package:flutter/material.dart';

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
            width: 33,
            height: 30,
          ),
          title: Text("رقم الصيانة : ${file.mainNumber}",
              style: const TextStyle(
                  color: Colors.black,
                  fontFamily: ("Cairo-Medium"),
                  fontWeight: FontWeight.w600,
                  fontSize: 12)),
          trailing: Text(file.date,
              style: const TextStyle(
                  color: Colors.black,
                  fontFamily: ("Cairo-Medium"),
                  fontWeight: FontWeight.w600,
                  fontSize: 12)),
        ),
      ),
    );
  }
}
