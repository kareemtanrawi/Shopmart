import 'bloc/frame_335_bloc.dart';
import 'models/frame_335_model.dart';
import 'package:flutter/material.dart';
import 'package:kareem_s_application1/core/app_export.dart';
import 'package:kareem_s_application1/widgets/custom_outlined_button.dart';

class Frame335Screen extends StatelessWidget {
  const Frame335Screen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<Frame335Bloc>(
      create: (context) => Frame335Bloc(Frame335State(
        frame335ModelObj: Frame335Model(),
      ))
        ..add(Frame335InitialEvent()),
      child: Frame335Screen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<Frame335Bloc, Frame335State>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: Container(
              width: 324.h,
              padding: EdgeInsets.symmetric(
                horizontal: 8.h,
                vertical: 18.v,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 2.v),
                  _buildFrameRow(context),
                  SizedBox(height: 25.v),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      width: 290.h,
                      margin: EdgeInsets.only(left: 16.h),
                      child: Text(
                        "msg_do_you_really_want".tr,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: CustomTextStyles.bodyLargePoppinsOnPrimary,
                      ),
                    ),
                  ),
                  SizedBox(height: 23.v),
                  CustomOutlinedButton(
                    text: "lbl_save_for_later".tr,
                    margin: EdgeInsets.only(
                      left: 23.h,
                      right: 24.h,
                    ),
                    leftIcon: Container(
                      margin: EdgeInsets.only(right: 30.h),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgVectorPrimary,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                      ),
                    ),
                    buttonStyle: CustomButtonStyles.outlinePrimary,
                    buttonTextStyle: CustomTextStyles.titleMediumPrimary,
                  ),
                  SizedBox(height: 16.v),
                  CustomOutlinedButton(
                    text: "lbl_save_for_later".tr,
                    margin: EdgeInsets.only(
                      left: 23.h,
                      right: 24.h,
                    ),
                    leftIcon: Container(
                      margin: EdgeInsets.only(right: 30.h),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgMdideleteoutline,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                      ),
                    ),
                    buttonStyle: CustomButtonStyles.outlinePrimary1,
                    buttonTextStyle:
                        CustomTextStyles.titleMediumWhiteA700SemiBold,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildFrameRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 15.h,
        right: 7.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "msg_remove_from_cart".tr,
            style: CustomTextStyles.titleMediumOnPrimary,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgCloseBlueGray900,
            height: 16.adaptSize,
            width: 16.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 5.v),
          ),
        ],
      ),
    );
  }
}
