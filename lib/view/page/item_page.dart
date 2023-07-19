
import 'package:flutter/material.dart';

import '../../core/const/resource_style/String_app.dart';
import '../../core/const/resource_style/asset_image.dart';
import '../../core/const/resource_style/color_app.dart';
import '../../core/const/resource_style/them_ app.dart';
import '../../core/const/resource_style/value_app.dart';
import '../widgets/custom_appBar.dart';

class ItemPage extends StatelessWidget {
  final List<Color> color = [
    Colors.deepOrange,
    Colors.pink,
    Colors.lightGreenAccent,
    Colors.yellowAccent,
    Colors.blueAccent,
    Colors.purpleAccent,
    Colors.purple,
    Colors.tealAccent,
  ];

  ItemPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorApp.white,
        body: ListView(
          children: [
            const CustomAppBar(icon: Icons.favorite, textAppBar: StringApp.product),
            const SizedBox(
              height: 60,
            ),
            Column(
              children: [
                Text(
                  StringApp.offerDetails,
                  style: ProductStyle.getStyle(),
                ),
                Image.asset(
                  ImageApp.image0,
                  height: ValueApp.va200,
                  width: ValueApp.va200,
                ),
                Row(
                  children: [
                    Text(
                      'Size:',
                      style: TextStyle(
                          fontSize: ValueApp.va25, color: ColorApp.teal),
                    ),
                    for (int i = 0; i < 8; i++)
                      Container(
                        alignment: Alignment.center,
                        margin: const EdgeInsets.all(3),
                        height: ValueApp.va30,
                        width: ValueApp.va30,
                        color: ColorApp.blue,
                        child: Text(
                          i.toString(),
                          style: TextStyle(color: ColorApp.white),
                        ),
                      ),
                  ],
                ),
                Row(
                  children: [
                    Text('color:',
                        style: TextStyle(
                            fontSize: ValueApp.va40, color: ColorApp.teal)),
                    for (int i = 0; i < 8; i++)
                      Container(
                        alignment: Alignment.center,
                        margin: const EdgeInsets.all(3),
                        height: ValueApp.va25,
                        width: ValueApp.va25,
                        color: color[i],
                      ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: ValueApp.va15, vertical: ValueApp.va15),
                      height: ValueApp.va140,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(ValueApp.va20)),
                      padding: const EdgeInsets.all(20),
                      child: const Text(
                        StringApp.offerDetailsTitle,
                        style: TextStyle(
                            color: Colors.white,
                            height: 1.5,
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                          left: ValueApp.va20, right: ValueApp.va20),
                      child: const Row(
                        children: [
                          Text(
                            StringApp.getOffer,
                            style: TextStyle(
                                color: Colors.blue,
                                fontSize: 22,
                                fontWeight: FontWeight.bold),
                          ),
                          Spacer(),
                          Icon(
                            Icons.add,
                            color: Colors.blue,
                            size: 40,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ],
            )
          ],
        ));
  }
}
