import 'bloc/iphone_13_mini_eleven_bloc.dart';
import 'models/iphone_13_mini_eleven_model.dart';
import 'package:flutter/material.dart';
import 'package:kareem_s_application1/core/app_export.dart';
import 'package:kareem_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:kareem_s_application1/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:kareem_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:kareem_s_application1/widgets/custom_elevated_button.dart';

class Iphone13MiniElevenScreen extends StatelessWidget {
  const Iphone13MiniElevenScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<Iphone13MiniElevenBloc>(
        create: (context) => Iphone13MiniElevenBloc(Iphone13MiniElevenState(
            iphone13MiniElevenModelObj: Iphone13MiniElevenModel()))
          ..add(Iphone13MiniElevenInitialEvent()),
        child: Iphone13MiniElevenScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<Iphone13MiniElevenBloc, Iphone13MiniElevenState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: appTheme.blueGray100.withOpacity(0.12),
              appBar: _buildAppBar(context),
              body: Container(
                  width: double.maxFinite,
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.h, vertical: 51.v),
                  child: Column(children: [
                    Container(
                        height: 126.adaptSize,
                        width: 126.adaptSize,
                        padding: EdgeInsets.all(32.h),
                        decoration: AppDecoration.outlineWhiteA.copyWith(
                            borderRadius: BorderRadiusStyle.circleBorder63),
                        child: CustomImageView(
                            imagePath: ImageConstant.imgLineMdAccountAlert,
                            height: 60.adaptSize,
                            width: 60.adaptSize,
                            alignment: Alignment.center)),
                    SizedBox(height: 32.v),
                    Text("msg_please_sign_in_to".tr,
                        style: CustomTextStyles.titleMedium19),
                    SizedBox(height: 5.v),
                    SizedBox(
                        width: 342.h,
                        child: Text("msg_if_you_are_not_registered".tr,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: CustomTextStyles.bodyLargePoppins16)),
                    SizedBox(height: 23.v),
                    CustomElevatedButton(
                        text: "lbl_sign_in".tr,
                        margin: EdgeInsets.symmetric(horizontal: 10.h),
                        onPressed: () {
                          onTapSignIn(context);
                        }),
                    SizedBox(height: 5.v)
                  ]))));
    });
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 40.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeftUndefinedWhiteA700,
            margin: EdgeInsets.only(left: 16.h, top: 9.v, bottom: 13.v)),
        title: AppbarSubtitleOne(
            text: "lbl_checkout".tr, margin: EdgeInsets.only(left: 16.h)),
        styleType: Style.bgFill);
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapSignIn(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.loginScreen,
    );
  }
}
