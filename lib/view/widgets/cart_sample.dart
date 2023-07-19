import 'package:flutter/material.dart';

import '../../core/const/resource_style/String_app.dart';
import '../../core/const/resource_style/color_app.dart';
import '../../core/const/resource_style/value_app.dart';

class CartItemSample extends StatelessWidget {
  const CartItemSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              color: ColorApp.tran,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(
                  ValueApp.va30,
                ),
                topRight: Radius.circular(
                  ValueApp.va30,
                ),
              )),
          child: Column(
            children: [
              for (int i = 0; i < 3; i++)
                Container(
                  margin: const EdgeInsets.symmetric(
                      horizontal: ValueApp.va20, vertical: ValueApp.va15),
                  height: ValueApp.va110,
                  decoration: BoxDecoration(
                      color: ColorApp.white,
                      borderRadius: BorderRadius.circular(ValueApp.va15)),
                  child: Row(
                    children: [
                      Radio(
                        value: '',
                        groupValue: '',
                        onChanged: (index) {},
                        activeColor: ColorApp.pink,
                      ),
                      SizedBox(
                        height: ValueApp.va70,
                        width: ValueApp.va70,
                        child: Image.asset('asset/image/$i.jpg'),
                      ),
                      Column(
                        children: [
                          Container(
                              margin: const EdgeInsets.symmetric(
                                  vertical: ValueApp.va20,
                                  horizontal: ValueApp.va20),
                              child: const Text(
                                StringApp.productTitle,
                                style: TextStyle(
                                    color: Colors.pinkAccent,
                                    fontWeight: FontWeight.bold,
                                    fontSize: ValueApp.va20),
                              )),
                          Container(
                            alignment: Alignment.bottomLeft,
                            child: const Text(
                              StringApp.offer,
                              style: TextStyle(
                                  color: Colors.pinkAccent,
                                  fontSize: ValueApp.va20),
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.delete,
                            color: ColorApp.error,
                          ),
                          const Spacer(),
                          Container(
                            alignment: Alignment.bottomLeft,
                            child: const Row(
                              children: [
                                Icon(
                                  Icons.add,
                                  size: 12,
                                ),
                                Text('_1'),
                                Icon(
                                  Icons.add,
                                  size: 12,
                                ),
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                )
            ],
          ),
        ),
      ],
    );
  }
}
