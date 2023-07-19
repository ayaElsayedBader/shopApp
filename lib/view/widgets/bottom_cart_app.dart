import 'package:flutter/material.dart';

import '../../core/const/resource_style/String_app.dart';
import '../../core/const/resource_style/color_app.dart';
import '../../core/const/resource_style/them_ app.dart';
import '../../core/const/resource_style/value_app.dart';

class BottomBarApp extends StatelessWidget {
  const BottomBarApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      elevation: ValueApp.va0,
      child: Container(
          margin: const EdgeInsets.all(ValueApp.va20),
          height: 100,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    StringApp.total,
                    style: Style.getStyle().copyWith(fontSize: ValueApp.va18),
                  ),
                  Text(
                    StringApp.totalNum,
                    style: Style.getStyle().copyWith(fontSize: ValueApp.va18),
                  )
                ],
              ),
              Container(
                  alignment: Alignment.center,
                  height: ValueApp.va60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: ColorApp.blue,
                      borderRadius: BorderRadius.circular(ValueApp.va20)),
                  child: Text(
                    StringApp.checkOut,
                    style: TextStyle(color: ColorApp.white),
                  ))
            ],
          )),
    );
  }
}
