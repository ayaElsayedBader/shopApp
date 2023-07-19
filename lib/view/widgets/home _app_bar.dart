import 'package:flutter/material.dart';

import '../../core/const/resource_style/String_app.dart';
import '../../core/const/resource_style/color_app.dart';
import '../../core/const/resource_style/value_app.dart';
import '../page/cart_page.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(ValueApp.va25),
          child: Icon(
            Icons.sort,
            color: ColorApp.blue,
            size: ValueApp.va30,
          ),
        ),
        Text(
          StringApp.appText,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        const Spacer(),
        Padding(
            padding: const EdgeInsets.all(ValueApp.va20),
            child: Stack(children: [
              Text(
                StringApp.appText2,
                style: TextStyle(color: ColorApp.blue),
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => const CarPage()));
                },
                child: Icon(
                  Icons.shopping_bag_outlined,
                  color: ColorApp.blue,
                ),
              ),
            ])),
      ],
    );
  }
}
