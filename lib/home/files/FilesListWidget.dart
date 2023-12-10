import 'package:flutter/material.dart';
import 'package:trining/models/CarsModel.dart';

import '../../models/FilesModel.dart';
import 'FileWidget.dart';

class FilesListWidget extends StatelessWidget {
  FilesListWidget(this.car, {Key? key}) : super(key: key);
  Cars car;
  List<Files> file = [
    Files(id: 1, mainNumber: 121, date: "10-2-2022"),
    Files(id: 2, mainNumber: 122, date: "11-2-2022"),
    Files(id: 3, mainNumber: 123, date: "12-2-2022"),
    Files(id: 4, mainNumber: 124, date: "13-2-2022"),
    Files(id: 5, mainNumber: 125, date: "14-2-2022"),
  ];

  @override
  Widget build(BuildContext context) {
    if (file.isEmpty) {
      return Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 45.0),
          child: Column(
            children: [
              Image.asset(
                "assets/images/image 21.png",
                width: 90,
                height: 90,
              ),
              const SizedBox(
                height: 16,
              ),
              const Text(
                "لا توجد ملفات",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: 15,
                    fontFamily: ("Cairo-Bold")),
              )
            ],
          ),
        ),
      );
    } else {
      return ListView.separated(
        itemCount: file.length,
        itemBuilder: (context, index) => FileWidget(file[index]),
        separatorBuilder: (context, index) => const SizedBox(
          height: 8,
        ),
      );
    }
  }
}
