import 'package:flutter/material.dart';

import '../../core/const/resource_style/color_app.dart';
import '../../core/const/resource_style/value_app.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
    required this.textAppBar,
    required this.icon,
    this.function,
  }) : super(key: key);
  final String textAppBar;
  final IconData icon;
  final void Function()? function;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(ValueApp.va25),
      color: ColorApp.white,
      child: Row(children: [
        IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              size: ValueApp.va30,
              color: ColorApp.blue,
            )),
        Padding(
          padding: const EdgeInsets.only(left: ValueApp.va30),
          child: Text(
            textAppBar,
            style: const TextStyle(fontSize: ValueApp.va30, color: Colors.red),
          ),
        ),
        const Spacer(),
        IconButton(
            icon: Icon(icon, size: ValueApp.va30, color: Colors.red),
            onPressed: function)
      ]),
    );
  }
}
