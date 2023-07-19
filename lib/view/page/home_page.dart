import 'package:flutter/material.dart';
import '../../core/const/resource_style/String_app.dart';
import '../../core/const/resource_style/color_app.dart';
import '../../core/const/resource_style/value_app.dart';
import '../widgets/categories_widgts.dart';
import '../widgets/home _app_bar.dart';
import '../widgets/item_widget.dart';

class HomePge extends StatelessWidget {
  const HomePge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const HomeAppBar(),
          Container(
            padding: const EdgeInsets.only(top: ValueApp.va15),

            decoration: BoxDecoration(
                color: ColorApp.tran,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(ValueApp.va35),
                  topRight: Radius.circular(ValueApp.va35),
                )),
            child: Column(
              children: [
                Container(
                  height: 60,
                  decoration: BoxDecoration(
                      color: ColorApp.blueWater,
                      borderRadius: BorderRadius.circular(ValueApp.va30)),
                  margin: const EdgeInsets.symmetric(horizontal: ValueApp.va15),
                  padding:
                      const EdgeInsets.symmetric(horizontal: ValueApp.va15),
                  child: Row(
                    children: [
                      Container(
                        height: ValueApp.va50,
                        width: ValueApp.va270,
                        margin: const EdgeInsets.only(left: ValueApp.va5),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: StringApp.hintText,
                          ),
                        ),
                      ),
                      Icon(
                        Icons.camera_alt,
                        color: ColorApp.blue,
                        size: ValueApp.va25,
                      )
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.symmetric(
                    vertical: ValueApp.va20,
                    horizontal: ValueApp.va10,
                  ),
                  child: Text(
                    StringApp.categories,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
                const CategoriesWidgets(),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: ValueApp.va20),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    StringApp.bestSelling,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
                const ItemWidget()
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        //  height: 70,
        backgroundColor: Colors.white,
        //  color: Colors.pink,
        items: [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(
              Icons.home,
              color: ColorApp.white,
              size: ValueApp.va30,
            ),
          ),
          BottomNavigationBarItem(
            label: 'shop',
            icon: Icon(
              Icons.shop,
              color: ColorApp.white,
              size: ValueApp.va30,
            ),
          ),
          BottomNavigationBarItem(
            label: 'List',
            icon: Icon(
              Icons.list,
              color: ColorApp.white,
              size: ValueApp.va30,
            ),
          )
        ],
      ),
    );
  }
}
