import 'package:flutter/material.dart';

import '../../core/const/resource_style/String_app.dart';
import '../../core/const/resource_style/color_app.dart';
import '../../core/const/resource_style/them_ app.dart';
import '../../core/const/resource_style/value_app.dart';
import '../widgets/bottom_cart_app.dart';
import '../widgets/cart_sample.dart';
import '../widgets/custom_appBar.dart';

class CarPage extends StatelessWidget {
  const CarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const CustomAppBar(
            textAppBar: StringApp.cart,
            icon: Icons.favorite,
          ),
          Column(children: [
            const CartItemSample(),
            Container(
              padding:
                  const EdgeInsets.only(left: ValueApp.va20, top: ValueApp.va15),
              child: Row(
                children: [
                  Icon(
                    Icons.add_box_rounded,
                    color: ColorApp.blue,
                  ),
                  Text(
                    StringApp.addCouponCode,
                    style: Style.getStyle(),
                  )
                ],
              ),
            ),
            const BottomBarApp()
          ])
        ],
      ),
    );
  }
}
