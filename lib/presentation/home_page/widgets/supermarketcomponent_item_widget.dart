import '../models/supermarketcomponent_item_model.dart';
import 'package:flutter/material.dart';
import 'package:kareem_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class SupermarketcomponentItemWidget extends StatelessWidget {
  SupermarketcomponentItemWidget(
    this.supermarketcomponentItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SupermarketcomponentItemModel supermarketcomponentItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 89.h,
      child: Align(
        alignment: Alignment.center,
        child: Column(
          children: [
            CustomImageView(
              imagePath: supermarketcomponentItemModelObj?.supermarketImage,
              height: 65.v,
              width: 68.h,
              radius: BorderRadius.circular(
                34.h,
              ),
            ),
            SizedBox(height: 9.v),
            Text(
              supermarketcomponentItemModelObj.supermarketText!,
              style: CustomTextStyles.bodyLarge16,
            ),
          ],
        ),
      ),
    );
  }
}
