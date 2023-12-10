import 'package:flutter/material.dart';
import 'package:trining/home/files/FilesListWidget.dart';

import '../../models/CarsModel.dart';
import 'TabItem.dart';

class TabsWidget extends StatefulWidget {
  TabsWidget({Key? key}) : super(key: key);
  List<Cars> car = [
    Cars(0, "الكل"),
    Cars(1, "سيارة 1"),
    Cars(2, "سيارة 2"),
    Cars(3, "سيارة 3"),
    Cars(4, "سيارة 4"),
  ];

  @override
  State<TabsWidget> createState() => _SourcesTabsWidgetState();
}

class _SourcesTabsWidgetState extends State<TabsWidget> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: widget.car.length,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 12,
          ),
          TabBar(
            labelPadding: const EdgeInsets.symmetric(horizontal: 8),
            indicator: const BoxDecoration(),
            indicatorColor: Colors.transparent,
            indicatorWeight: 0.0,
            onTap: (index) {
              selectedIndex = index;
              setState(() {});
            },
            isScrollable: true,
            tabs: widget.car
                .map(
                  (car) =>
                      TabItem(car, widget.car.indexOf(car) == selectedIndex),
                )
                .toList(),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 12.0, top: 24, bottom: 12),
            child: Text(
              "الملفات المتاحة",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 15,
                  fontFamily: ("Cairo-Bold")),
            ),
          ),
          FilesListWidget(widget.car[selectedIndex])
        ],
      ),
    );
  }
}
