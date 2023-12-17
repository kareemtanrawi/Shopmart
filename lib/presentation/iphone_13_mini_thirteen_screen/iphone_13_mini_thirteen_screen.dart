import 'bloc/iphone_13_mini_thirteen_bloc.dart';
import 'models/iphone_13_mini_thirteen_model.dart';
import 'package:flutter/material.dart';
import 'package:kareem_s_application1/core/app_export.dart';
import 'package:kareem_s_application1/presentation/home_page/home_page.dart';
import 'package:kareem_s_application1/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class Iphone13MiniThirteenScreen extends StatelessWidget {
  Iphone13MiniThirteenScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<Iphone13MiniThirteenBloc>(
        create: (context) => Iphone13MiniThirteenBloc(Iphone13MiniThirteenState(
            iphone13MiniThirteenModelObj: Iphone13MiniThirteenModel()))
          ..add(Iphone13MiniThirteenInitialEvent()),
        child: Iphone13MiniThirteenScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<Iphone13MiniThirteenBloc, Iphone13MiniThirteenState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: appTheme.blueGray100.withOpacity(0.12),
              body: SizedBox(
                  width: double.maxFinite,
                  child: Column(children: [
                    _buildAccountFrame(context),
                    _buildWelcomeFrame(context),
                    SizedBox(height: 15.v),
                    _buildFiftySixColumn(context),
                    SizedBox(height: 16.v),
                    _buildFiftyThreeColumn(context),
                    SizedBox(height: 5.v)
                  ])),
              bottomNavigationBar: _buildBottomBar(context)));
    });
  }

  /// Section Widget
  Widget _buildAccountFrame(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 6.v),
        decoration: AppDecoration.fillGray800,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 3.v),
              Text("lbl_account".tr, style: theme.textTheme.titleLarge)
            ]));
  }

  /// Section Widget
  Widget _buildWelcomeFrame(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 5.v),
        decoration: AppDecoration.fillGray800,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("lbl_welcome_nura".tr,
                  style: CustomTextStyles.titleLargePrimary),
              SizedBox(height: 4.v),
              Text("msg_norkdr624_gmail_com".tr,
                  style: CustomTextStyles.titleSmallWhiteA700)
            ]));
  }

  /// Section Widget
  Widget _buildFiftySixColumn(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 12.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
              padding: EdgeInsets.only(left: 4.h),
              child: Text("lbl_my_account".tr,
                  style: CustomTextStyles.bodyMediumBluegray900)),
          SizedBox(height: 7.v),
          SizedBox(
              height: 152.v,
              width: 351.h,
              child: Stack(alignment: Alignment.center, children: [
                Padding(
                    padding: EdgeInsets.fromLTRB(4.h, 8.v, 8.h, 119.v),
                    child: _buildFrame(context, ordersText: "lbl_orders".tr)),
                Align(
                    alignment: Alignment.center,
                    child: Card(
                        clipBehavior: Clip.antiAlias,
                        elevation: 0,
                        margin: EdgeInsets.all(0),
                        color: appTheme.whiteA700,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusStyle.roundedBorder5),
                        child: Container(
                            height: 152.v,
                            width: 351.h,
                            decoration: AppDecoration.fillWhiteA.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder5),
                            child:
                                Stack(alignment: Alignment.center, children: [
                              Align(
                                  alignment: Alignment.topCenter,
                                  child: Padding(
                                      padding: EdgeInsets.only(
                                          left: 4.h, top: 8.v, right: 8.h),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgMaterialSymbol,
                                                      height: 24.adaptSize,
                                                      width: 24.adaptSize),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 16.h),
                                                      child: Text(
                                                          "lbl_orders".tr,
                                                          style: CustomTextStyles
                                                              .bodyMedium15_1)),
                                                  Spacer(),
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgArrowRight,
                                                      height: 24.v,
                                                      width: 23.h)
                                                ]),
                                            SizedBox(height: 24.v),
                                            Padding(
                                                padding:
                                                    EdgeInsets.only(left: 3.h),
                                                child: _buildFrame1(context,
                                                    inboxText: "lbl_inbox".tr,
                                                    onTapFrame1: () {
                                                  onTapFrame(context);
                                                })),
                                            SizedBox(height: 24.v),
                                            _buildFrame2(context,
                                                savedItemsText:
                                                    "lbl_saved_items".tr)
                                          ]))),
                              Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 4.h, vertical: 8.v),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder5),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Padding(
                                                padding:
                                                    EdgeInsets.only(right: 4.h),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      CustomImageView(
                                                          imagePath: ImageConstant
                                                              .imgMaterialSymbol,
                                                          height: 24.adaptSize,
                                                          width: 24.adaptSize),
                                                      Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 16.h),
                                                          child: Text(
                                                              "lbl_orders".tr,
                                                              style: CustomTextStyles
                                                                  .bodyMedium15_1)),
                                                      Spacer(),
                                                      CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgArrowRight,
                                                          height: 24.v,
                                                          width: 23.h)
                                                    ])),
                                            SizedBox(height: 24.v),
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    left: 3.h, right: 4.h),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      CustomImageView(
                                                          imagePath: ImageConstant
                                                              .imgLetsIconsMessageLight,
                                                          height: 24.adaptSize,
                                                          width: 24.adaptSize),
                                                      Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 16.h),
                                                          child: Text(
                                                              "lbl_inbox".tr,
                                                              style: CustomTextStyles
                                                                  .bodyMedium15_1)),
                                                      Spacer(),
                                                      CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgArrowRight,
                                                          height: 24.v,
                                                          width: 23.h)
                                                    ])),
                                            SizedBox(height: 24.v),
                                            Padding(
                                                padding:
                                                    EdgeInsets.only(right: 4.h),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      CustomImageView(
                                                          imagePath: ImageConstant
                                                              .imgMdiFavouriteBorder,
                                                          height: 24.adaptSize,
                                                          width: 24.adaptSize),
                                                      Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 16.h),
                                                          child: Text(
                                                              "lbl_saved_items"
                                                                  .tr,
                                                              style: CustomTextStyles
                                                                  .bodyMedium15_1)),
                                                      Spacer(),
                                                      CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgArrowRight,
                                                          height: 24.v,
                                                          width: 23.h)
                                                    ])),
                                            SizedBox(height: 13.v)
                                          ])))
                            ]))))
              ]))
        ]));
  }

  /// Section Widget
  Widget _buildFiftyThreeColumn(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 10.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
              padding: EdgeInsets.only(left: 4.h),
              child: Text("lbl_my_settings".tr,
                  style: CustomTextStyles.bodyMediumBluegray900)),
          SizedBox(height: 7.v),
          Container(
              height: 152.v,
              width: 352.h,
              margin: EdgeInsets.only(left: 1.h),
              child: Stack(alignment: Alignment.topCenter, children: [
                Align(
                    alignment: Alignment.center,
                    child: Container(
                        height: 152.v,
                        width: 351.h,
                        decoration: BoxDecoration(
                            color: appTheme.whiteA700,
                            borderRadius: BorderRadius.circular(5.h)))),
                Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                        height: 24.v,
                        width: 348.h,
                        margin: EdgeInsets.only(top: 8.v),
                        child:
                            Stack(alignment: Alignment.centerRight, children: [
                          Align(
                              alignment: Alignment.topLeft,
                              child: Text("lbl_address_book".tr,
                                  style: CustomTextStyles.bodyMedium15_1)),
                          CustomImageView(
                              imagePath: ImageConstant.imgArrowRight,
                              height: 24.v,
                              width: 23.h,
                              alignment: Alignment.centerRight),
                          Align(
                              alignment: Alignment.center,
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                        padding: EdgeInsets.only(bottom: 1.v),
                                        child: Text("lbl_address_book".tr,
                                            style: CustomTextStyles
                                                .bodyMedium15_1)),
                                    CustomImageView(
                                        imagePath: ImageConstant.imgArrowRight,
                                        height: 24.v,
                                        width: 23.h)
                                  ]))
                        ]))),
                Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                        padding: EdgeInsets.only(
                            left: 5.h, top: 106.v, bottom: 21.v),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(top: 1.v),
                                  child: Text("lbl_sign_out".tr,
                                      style: CustomTextStyles.bodyMedium15_1)),
                              CustomImageView(
                                  imagePath: ImageConstant.imgArrowRight,
                                  height: 24.v,
                                  width: 23.h)
                            ]))),
                Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                        padding:
                            EdgeInsets.only(left: 7.h, top: 57.v, bottom: 69.v),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(top: 2.v),
                                  child: Text("msg_account_management".tr,
                                      style: CustomTextStyles.bodyMedium15_1)),
                              CustomImageView(
                                  imagePath: ImageConstant.imgArrowRight,
                                  height: 24.v,
                                  width: 23.h)
                            ])))
              ]))
        ]));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  /// Common widget
  Widget _buildFrame(
    BuildContext context, {
    required String ordersText,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      CustomImageView(
          imagePath: ImageConstant.imgMaterialSymbol,
          height: 24.adaptSize,
          width: 24.adaptSize),
      Padding(
          padding: EdgeInsets.only(left: 16.h),
          child: Text(ordersText,
              style: CustomTextStyles.bodyMedium15_1.copyWith(
                  color: theme.colorScheme.onPrimaryContainer.withOpacity(1)))),
      Spacer(),
      CustomImageView(
          imagePath: ImageConstant.imgArrowRight, height: 24.v, width: 23.h)
    ]);
  }

  /// Common widget
  Widget _buildFrame1(
    BuildContext context, {
    required String inboxText,
    Function? onTapFrame1,
  }) {
    return GestureDetector(
        onTap: () {
          onTapFrame1!.call();
        },
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          CustomImageView(
              imagePath: ImageConstant.imgLetsIconsMessageLight,
              height: 24.adaptSize,
              width: 24.adaptSize),
          Padding(
              padding: EdgeInsets.only(left: 16.h),
              child: Text(inboxText,
                  style: CustomTextStyles.bodyMedium15_1.copyWith(
                      color: theme.colorScheme.onPrimaryContainer
                          .withOpacity(1)))),
          Spacer(),
          CustomImageView(
              imagePath: ImageConstant.imgArrowRight, height: 24.v, width: 23.h)
        ]));
  }

  /// Common widget
  Widget _buildFrame2(
    BuildContext context, {
    required String savedItemsText,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      CustomImageView(
          imagePath: ImageConstant.imgMdiFavouriteBorder,
          height: 24.adaptSize,
          width: 24.adaptSize),
      Padding(
          padding: EdgeInsets.only(left: 16.h),
          child: Text(savedItemsText,
              style: CustomTextStyles.bodyMedium15_1.copyWith(
                  color: theme.colorScheme.onPrimaryContainer.withOpacity(1)))),
      Spacer(),
      CustomImageView(
          imagePath: ImageConstant.imgArrowRight, height: 24.v, width: 23.h)
    ]);
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

  /// Navigates to the iphone13MiniFourteenScreen when the action is triggered.
  onTapFrame(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.iphone13MiniFourteenScreen,
    );
  }
}
