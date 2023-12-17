import 'bloc/iphone_13_mini_fourteen_bloc.dart';
import 'models/iphone_13_mini_fourteen_model.dart';
import 'package:flutter/material.dart';
import 'package:kareem_s_application1/core/app_export.dart';
import 'package:kareem_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:kareem_s_application1/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:kareem_s_application1/widgets/app_bar/custom_app_bar.dart';

class Iphone13MiniFourteenScreen extends StatelessWidget {
  const Iphone13MiniFourteenScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<Iphone13MiniFourteenBloc>(
      create: (context) => Iphone13MiniFourteenBloc(Iphone13MiniFourteenState(
        iphone13MiniFourteenModelObj: Iphone13MiniFourteenModel(),
      ))
        ..add(Iphone13MiniFourteenInitialEvent()),
      child: Iphone13MiniFourteenScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<Iphone13MiniFourteenBloc, Iphone13MiniFourteenState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: appTheme.blueGray100.withOpacity(0.12),
            appBar: _buildAppBar(context),
            body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(
                horizontal: 13.h,
                vertical: 50.v,
              ),
              child: Column(
                children: [
                  Container(
                    height: 96.adaptSize,
                    width: 96.adaptSize,
                    padding: EdgeInsets.all(21.h),
                    decoration: AppDecoration.fillWhiteA.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder48,
                    ),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgThumbsUp,
                      height: 51.v,
                      width: 52.h,
                      alignment: Alignment.center,
                    ),
                  ),
                  SizedBox(height: 18.v),
                  Text(
                    "msg_you_don_t_have_any".tr,
                    style: CustomTextStyles.titleLargeOnPrimaryContainer,
                  ),
                  SizedBox(height: 15.v),
                  Container(
                    width: 333.h,
                    margin: EdgeInsets.only(left: 14.h),
                    child: Text(
                      "msg_here_you_will_be".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: CustomTextStyles.bodyMediumLight,
                    ),
                  ),
                  SizedBox(height: 5.v),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 40.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowLeftUndefinedWhiteA700,
        margin: EdgeInsets.only(
          left: 16.h,
          top: 9.v,
          bottom: 13.v,
        ),
      ),
      title: AppbarSubtitleOne(
        text: "lbl_inbox".tr,
        margin: EdgeInsets.only(left: 16.h),
      ),
      styleType: Style.bgFill,
    );
  }
}
