import 'package:flutter/material.dart';
import 'package:mobile_shop_app/widgets/small_text.dart';

import '../utils/colors.dart';
import '../utils/dimensions.dart';
import 'big_text.dart';
import 'icon_and_text.dart';

class AppColumn extends StatelessWidget {
  final String text;

  const AppColumn({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigText(
          text: text,
          size: Dimensions.font26,
        ),
        SizedBox(height: Dimensions.height10,),
        Row(
          children: [
            Wrap(
              children: List.generate(5, (index) => Icon(
                Icons.star,
                color: AppColors.mainColor,
                size: 15,
              )),
            ),
            SizedBox(width: 10,),
            SmallText(text: "4.5"),
            SizedBox(width: 10,),
            SmallText(text: "1000"),
            SizedBox(width: 10,),
            SmallText(text: "lượt đánh giá")
          ],
        ),
        SizedBox(height: Dimensions.height20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconAndText(
              icon: Icons.developer_board_outlined,
              text: "Apple A16 Bionic",
              iconColor: AppColors.iconColor1,
            ),
            IconAndText(
              icon: Icons.memory_outlined,
              text: "6 GB",
              iconColor: AppColors.mainColor,
            ),
            IconAndText(
              icon: Icons.lens_blur_outlined,
              text: "256 GB",
              iconColor: AppColors.iconColor2,
            ),
          ],
        ),
      ],
    );
  }
}
