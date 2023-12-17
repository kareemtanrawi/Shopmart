import '../models/viewhierarchy_item_model.dart';
import 'package:flutter/material.dart';
import 'package:kareem_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class ViewhierarchyItemWidget extends StatelessWidget {
  ViewhierarchyItemWidget(
    this.viewhierarchyItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ViewhierarchyItemModel viewhierarchyItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 131.h,
      child: Padding(
        padding: EdgeInsets.only(top: 8.v),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: SizedBox(
                height: 100.v,
                width: 120.h,
                child: Stack(
                  alignment: Alignment.topRight,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        height: 100.v,
                        width: 88.h,
                        decoration: AppDecoration.fillBluegray100,
                        child: CustomImageView(
                          imagePath: viewhierarchyItemModelObj?.image,
                          height: 100.v,
                          width: 88.h,
                          alignment: Alignment.center,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: 4.v,
                          right: 3.h,
                        ),
                        child: Text(
                          viewhierarchyItemModelObj.text1!,
                          style: theme.textTheme.labelLarge,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        width: 38.h,
                        padding: EdgeInsets.symmetric(
                          horizontal: 3.h,
                          vertical: 4.v,
                        ),
                        decoration: AppDecoration.fillTeal50,
                        child: Text(
                          viewhierarchyItemModelObj.text2!,
                          style: theme.textTheme.labelLarge,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 4.v),
            SizedBox(
              width: 77.h,
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "lbl_smart_watch".tr,
                      style:
                          CustomTextStyles.labelLargeOnPrimaryContainerMedium,
                    ),
                    TextSpan(
                      text: "lbl_egp_1500".tr,
                      style: CustomTextStyles.labelLargeOnPrimaryContainer_1,
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
