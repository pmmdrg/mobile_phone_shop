import 'package:flutter/material.dart';
import 'package:mobile_shop_app/utils/colors.dart';
import 'package:mobile_shop_app/utils/dimensions.dart';
import 'package:mobile_shop_app/widgets/big_text.dart';
import 'package:mobile_shop_app/widgets/small_text.dart';

import 'main_page_body.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);
  
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: Container(
              margin: EdgeInsets.only(
                  top: Dimensions.height45,
                  bottom: Dimensions.height15,
              ),
              padding: EdgeInsets.only(
                  left: Dimensions.width20,
                  right: Dimensions.width20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      BigText(
                          text: "Vietnam",
                          color: AppColors.mainColor,
                      ),
                      Row(
                        children: [
                          SmallText(
                            text: "Ho Chi Minh",
                            color: Colors.black54,
                          ),
                          Icon(Icons.arrow_drop_down_rounded)
                        ],
                      )
                    ],
                  ),
                  Center(
                    child: Container(
                      width: Dimensions.height45,
                      height: Dimensions.height45,
                      child: Icon(
                        Icons.search,
                        color: Colors.white,
                        size: Dimensions.iconSize24,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(Dimensions.radius15),
                        color: AppColors.mainColor,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: MainPageBody(),
            ),
          ),
        ],
      ),
    );
  }
}