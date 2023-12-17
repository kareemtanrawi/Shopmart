import 'bloc/cart_bloc.dart';
import 'models/cart_model.dart';
import 'package:flutter/material.dart';
import 'package:kareem_s_application1/core/app_export.dart';
import 'package:kareem_s_application1/presentation/home_page/home_page.dart';
import 'package:kareem_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:kareem_s_application1/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:kareem_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:kareem_s_application1/widgets/custom_bottom_bar.dart';
import 'package:kareem_s_application1/widgets/custom_elevated_button.dart';
import 'package:kareem_s_application1/widgets/custom_icon_button.dart';
import 'package:kareem_s_application1/widgets/custom_outlined_button.dart';

// ignore_for_file: must_be_immutable
class CartScreen extends StatelessWidget {
  CartScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<CartBloc>(
        create: (context) => CartBloc(CartState(cartModelObj: CartModel()))
          ..add(CartInitialEvent()),
        child: CartScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<CartBloc, CartState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              appBar: _buildAppBar(context),
              body: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(vertical: 16.v),
                  child: Column(children: [
                    _buildSixty(context),
                    SizedBox(height: 24.v),
                    _buildSixtyFive(context),
                    SizedBox(height: 5.v)
                  ])),
              bottomNavigationBar: _buildBottomBar(context)));
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
            text: "lbl_cart".tr, margin: EdgeInsets.only(left: 16.h)),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildSixty(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
          padding: EdgeInsets.only(left: 8.h),
          child: Text("lbl_cart_summary".tr,
              style: CustomTextStyles.bodyMediumBluegray900)),
      SizedBox(height: 3.v),
      Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 13.h, vertical: 4.v),
          decoration: AppDecoration.fillBlueGray,
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Padding(
                padding: EdgeInsets.only(left: 3.h, top: 2.v),
                child: Text("lbl_subtotal".tr,
                    style: CustomTextStyles.bodyLargePoppins_1)),
            Padding(
                padding: EdgeInsets.only(top: 2.v),
                child: Text("lbl_egp_200_95".tr,
                    style: theme.textTheme.titleMedium))
          ]))
    ]);
  }

  /// Section Widget
  Widget _buildSixtyFive(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 9.h),
        child: Column(children: [
          Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 6.h),
                  child: Text("lbl_cart_1".tr,
                      style: CustomTextStyles.bodyMediumBluegray900))),
          SizedBox(height: 34.v),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 13.v),
              decoration: AppDecoration.outlineBlueGray
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder5),
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(height: 6.v),
                    Padding(
                        padding: EdgeInsets.only(left: 16.h),
                        child: Row(children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgRectangle63,
                              height: 113.v,
                              width: 103.h),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: 8.h, top: 19.v, bottom: 2.v),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                        height: 70.v,
                                        width: 102.h,
                                        child: Stack(
                                            alignment: Alignment.bottomRight,
                                            children: [
                                              Align(
                                                  alignment: Alignment.topLeft,
                                                  child: SizedBox(
                                                      width: 85.h,
                                                      child: RichText(
                                                          text: TextSpan(
                                                              children: [
                                                                TextSpan(
                                                                    text:
                                                                        "lbl_loose_powder"
                                                                            .tr,
                                                                    style: theme
                                                                        .textTheme
                                                                        .bodyMedium),
                                                                TextSpan(
                                                                    text:
                                                                        "lbl_egp_200_952"
                                                                            .tr,
                                                                    style: CustomTextStyles
                                                                        .titleMediumSemiBold),
                                                                TextSpan(
                                                                    text:
                                                                        "lbl_egp_300"
                                                                            .tr,
                                                                    style: CustomTextStyles
                                                                        .titleSmallGray800
                                                                        .copyWith(
                                                                            decoration:
                                                                                TextDecoration.lineThrough))
                                                              ]),
                                                          textAlign:
                                                              TextAlign.left))),
                                              Align(
                                                  alignment:
                                                      Alignment.bottomRight,
                                                  child: Container(
                                                      width: 38.h,
                                                      padding:
                                                          EdgeInsets.all(4.h),
                                                      decoration: AppDecoration
                                                          .fillTeal50,
                                                      child: Text("lbl_10".tr,
                                                          style: theme.textTheme
                                                              .labelLarge)))
                                            ])),
                                    Text("lbl_in_stock".tr,
                                        style: CustomTextStyles
                                            .bodyMediumGray800_1)
                                  ]))
                        ])),
                    SizedBox(height: 27.v),
                    Padding(
                        padding: EdgeInsets.only(right: 11.h),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomOutlinedButton(
                                  height: 39.v,
                                  width: 77.h,
                                  text: "lbl_remove".tr,
                                  margin: EdgeInsets.only(bottom: 2.v),
                                  buttonStyle:
                                      CustomButtonStyles.outlineBlueGray,
                                  buttonTextStyle: CustomTextStyles
                                      .titleSmallPrimarySemiBold,
                                  onPressed: () {
                                    onTapRemove(context);
                                  }),
                              Padding(
                                  padding: EdgeInsets.only(top: 6.v),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        CustomIconButton(
                                            height: 35.adaptSize,
                                            width: 35.adaptSize,
                                            padding: EdgeInsets.all(10.h),
                                            child: CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgGroup10)),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: 15.h,
                                                top: 2.v,
                                                bottom: 8.v),
                                            child: Text("lbl_1".tr,
                                                style: CustomTextStyles
                                                    .titleLargeRobotoOnPrimaryContainer)),
                                        Padding(
                                            padding:
                                                EdgeInsets.only(left: 19.h),
                                            child: CustomIconButton(
                                                height: 35.adaptSize,
                                                width: 35.adaptSize,
                                                padding: EdgeInsets.all(10.h),
                                                decoration:
                                                    IconButtonStyleHelper
                                                        .fillPrimaryTL5,
                                                child: CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgClose)))
                                      ]))
                            ]))
                  ])),
          SizedBox(height: 24.v),
          CustomElevatedButton(
              height: 56.v,
              width: 239.h,
              text: "msg_checkout_egp_200_95".tr,
              buttonStyle: CustomButtonStyles.fillPrimaryTL5,
              buttonTextStyle:
                  CustomTextStyles.titleMediumWhiteA700SemiBold16_1,
              onPressed: () {
                onTapCHECKOUTEGP20095(context);
              })
        ]));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homePage;
      case BottomBarEnum.Cart:
        return "/";
      case BottomBarEnum.Account:
        return "/";
      case BottomBarEnum.Categories:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.homePage:
        return HomePage();
      default:
        return DefaultWidget();
    }
  }

  /// Navigates to the frame335Screen when the action is triggered.
  onTapRemove(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.frame335Screen,
    );
  }

  /// Navigates to the iphone13MiniElevenScreen when the action is triggered.
  onTapCHECKOUTEGP20095(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.iphone13MiniElevenScreen,
    );
  }
}
