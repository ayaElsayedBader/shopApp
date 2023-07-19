import 'package:flutter/material.dart';
import '../../core/const/resource_style/String_app.dart';
import '../../core/const/resource_style/color_app.dart';
import '../../core/const/resource_style/value_app.dart';

class CategoriesWidgets extends StatelessWidget {
  const CategoriesWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (int i = 0; i < 8; i++)
            Container(
              margin: const EdgeInsets.symmetric(horizontal: ValueApp.va10),
              padding: const EdgeInsets.symmetric(
                  horizontal: ValueApp.va10, vertical: ValueApp.va5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(ValueApp.va20),
                color: ColorApp.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    StringApp.fashionable,
                    style: Theme.of(context)
                        .textTheme
                        .headline1
                        ?.copyWith(fontSize: ValueApp.va17),
                  ),
                  Image.asset(
                    'asset/image/$i.jpg',
                    height: ValueApp.va100,
                    width: ValueApp.va120,
                  )
                ],
              ),
            )
        ],
      ),
    );
  }
}
