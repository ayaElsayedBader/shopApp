import 'package:flutter/material.dart';

import '../../core/const/resource_style/String_app.dart';
import '../../core/const/resource_style/color_app.dart';
import '../../core/const/resource_style/value_app.dart';
import '../page/item_page.dart';

class ItemWidget extends StatelessWidget {
  const ItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
        crossAxisCount: 2,
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        childAspectRatio: 0.68,
        children: [
          for (int i = 0; i < 8; i++)
            Container(
                decoration: BoxDecoration(
                  color: ColorApp.white,
                  borderRadius: BorderRadius.circular(ValueApp.va20),
                ),
                margin: const EdgeInsets.symmetric(
                  horizontal: ValueApp.va10,
                  vertical: ValueApp.va5,
                ),
                padding: const EdgeInsets.only(
                    left: ValueApp.va15,
                    right: ValueApp.va15,
                    top: ValueApp.va10),
                child: Column(children: [
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(ValueApp.va5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(ValueApp.va20),
                          color: ColorApp.blue,
                        ),
                        child: Text(
                          StringApp.fivtey,
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(color: ColorApp.white),
                        ),
                      ),
                      const Spacer(),
                      Icon(
                        Icons.favorite_border,
                        color: ColorApp.error,
                        size: ValueApp.va25,
                      ),
                    ],
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (_) => ItemPage( )));
                    },
                    child: Container(
                        alignment: Alignment.centerLeft,
                        margin: const EdgeInsets.symmetric(vertical: ValueApp.va10),
                        child: Image.asset(
                          'asset/image/$i.jpg',
                          height: ValueApp.va100,
                          width: ValueApp.va100,
                        )),
                  ),
                  Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        StringApp.productTitle,
                        style: TextStyle(
                            color: ColorApp.error,
                            fontSize: ValueApp.va17,
                            fontWeight: FontWeight.bold),
                      )),
                  Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Write a description about the product',
                        style: TextStyle(
                          color: ColorApp.error,
                          fontSize: ValueApp.va12,
                        ),
                      )),
                  Row(
                    children: [
                      Text(
                        StringApp.offer,
                        style: TextStyle(
                          color: ColorApp.blue,
                          fontSize: ValueApp.va20,
                        ),
                      ),
                      const Spacer(),
                      Icon(Icons.shopping_cart_checkout,
                          size: ValueApp.va20, color: ColorApp.blue)
                    ],
                  )
                ]))
        ]);
  }
}
