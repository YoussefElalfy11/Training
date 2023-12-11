import 'package:flutter/material.dart';
import 'package:trining/models/CarsModel.dart';

class TabItem extends StatefulWidget {
  TabItem(this.car, this.isSelected, {Key? key}) : super(key: key);
  Cars car;
  bool isSelected;

  @override
  State<TabItem> createState() => _TabItemState();
}

class _TabItemState extends State<TabItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 83,
      height: 40,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: widget.isSelected
              ? const Color(0xFFCA0D0E)
              : const Color(0xFFF4F4F4)),
      child: Center(
        child: Text(
          widget.car.name,
          style: TextStyle(
              color: widget.isSelected ? Colors.white : Colors.black,
              fontWeight: FontWeight.w700,
              fontFamily: ("Cairo-Bold")),
        ),
      ),
    );
  }
}
