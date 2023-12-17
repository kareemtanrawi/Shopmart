import 'bloc/iphone_13_mini_twelve_bloc.dart';
import 'models/iphone_13_mini_twelve_model.dart';
import 'package:flutter/material.dart';
import 'package:kareem_s_application1/core/app_export.dart';
import 'package:kareem_s_application1/presentation/home_page/home_page.dart';
import 'package:kareem_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:kareem_s_application1/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:kareem_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:kareem_s_application1/widgets/custom_bottom_bar.dart';
import 'package:kareem_s_application1/widgets/custom_elevated_button.dart';
import 'package:kareem_s_application1/widgets/custom_icon_button.dart';
import 'package:kareem_s_application1/widgets/custom_radio_button.dart';
import 'package:kareem_s_application1/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class Iphone13MiniTwelveScreen extends StatelessWidget {
  Iphone13MiniTwelveScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<Iphone13MiniTwelveBloc>(
        create: (context) => Iphone13MiniTwelveBloc(Iphone13MiniTwelveState(
            iphone13MiniTwelveModelObj: Iphone13MiniTwelveModel()))
          ..add(Iphone13MiniTwelveInitialEvent()),
        child: Iphone13MiniTwelveScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 16.v),
                child: Column(children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                          height: 23.v,
                          width: 122.h,
                          margin: EdgeInsets.only(left: 16.h),
                          child: Stack(alignment: Alignment.center, children: [
                            Align(
                                alignment: Alignment.center,
                                child: Text("lbl_order_summary".tr,
                                    style: CustomTextStyles
                                        .bodyMediumBluegray900)),
                            Align(
                                alignment: Alignment.center,
                                child: Text("lbl_order_summary".tr,
                                    style:
                                        CustomTextStyles.bodyMediumBluegray900))
                          ]))),
                  SizedBox(height: 4.v),
                  _buildFrame(context),
                  SizedBox(height: 25.v),
                  _buildColumn(context),
                  SizedBox(height: 64.v),
                  CustomElevatedButton(
                      text: "lbl_confirm_order".tr,
                      margin: EdgeInsets.symmetric(horizontal: 26.h),
                      onPressed: () {
                        onTapConfirmOrder(context);
                      }),
                  SizedBox(height: 5.v)
                ])),
            bottomNavigationBar: _buildBottomBar(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 40.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeftUndefinedWhiteA700,
            margin: EdgeInsets.only(left: 16.h, top: 9.v, bottom: 13.v)),
        title: AppbarSubtitleOne(
            text: "msg_place_your_order".tr,
            margin: EdgeInsets.only(left: 16.h)),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 9.v),
        decoration: AppDecoration.outlineGray,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          SizedBox(height: 3.v),
          Padding(
              padding: EdgeInsets.only(right: 2.h),
              child: _buildRow(context,
                  totalLabel: "msg_item_s_total_1".tr,
                  priceLabel: "lbl_egp_200_953".tr)),
          SizedBox(height: 6.v),
          Padding(
              padding: EdgeInsets.only(right: 7.h),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                        padding: EdgeInsets.only(top: 1.v),
                        child: Text("lbl_delivery_fees".tr,
                            style: CustomTextStyles.bodyLargePoppins_1)),
                    Text("lbl_egp_35_00".tr, style: theme.textTheme.titleMedium)
                  ])),
          SizedBox(height: 14.v),
          Padding(
              padding: EdgeInsets.only(right: 2.h),
              child: _buildRow(context,
                  totalLabel: "lbl_total".tr, priceLabel: "lbl_egp_235_95".tr)),
          SizedBox(height: 10.v),
          Divider(),
          SizedBox(height: 11.v),
          Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                  padding: EdgeInsets.only(right: 25.h),
                  child: Row(children: [
                    Expanded(
                        child: BlocSelector<
                                Iphone13MiniTwelveBloc,
                                Iphone13MiniTwelveState,
                                TextEditingController?>(
                            selector: (state) => state.enterCodeController,
                            builder: (context, enterCodeController) {
                              return CustomTextFormField(
                                  controller: enterCodeController,
                                  hintText: "lbl_enter_code_here".tr,
                                  hintStyle: CustomTextStyles
                                      .bodyLargePoppinsBluegray900_1,
                                  textInputAction: TextInputAction.done,
                                  contentPadding: EdgeInsets.symmetric(
                                      horizontal: 12.h, vertical: 8.v),
                                  borderDecoration:
                                      TextFormFieldStyleHelper.outlineGrayTL5,
                                  filled: false);
                            })),
                    Padding(
                        padding:
                            EdgeInsets.only(left: 41.h, top: 7.v, bottom: 5.v),
                        child: Text("lbl_apply".tr,
                            style:
                                CustomTextStyles.bodyLargePoppinsBluegray900))
                  ])))
        ]));
  }

  /// Section Widget
  Widget _buildColumn(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
          padding: EdgeInsets.only(left: 16.h),
          child: Text("lbl_payment_method".tr,
              style: CustomTextStyles.bodyMediumBluegray900)),
      SizedBox(height: 15.v),
      Container(
          padding: EdgeInsets.symmetric(horizontal: 1.h, vertical: 11.v),
          decoration: AppDecoration.outlineGray,
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 14.h),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  CustomIconButton(
                      height: 44.adaptSize,
                      width: 44.adaptSize,
                      padding: EdgeInsets.all(7.h),
                      decoration: IconButtonStyleHelper.fillBlueGray,
                      child: CustomImageView(imagePath: ImageConstant.imgUser)),
                  Padding(
                      padding:
                          EdgeInsets.only(left: 16.h, top: 9.v, bottom: 10.v),
                      child: Text("lbl_credit_card".tr,
                          style: CustomTextStyles.titleMedium16)),
                  Spacer(),
                  Container(
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      margin: EdgeInsets.symmetric(vertical: 10.v),
                      child: Stack(alignment: Alignment.center, children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgContrast,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                            alignment: Alignment.center),
                        Align(
                            alignment: Alignment.center,
                            child: Container(
                                height: 13.adaptSize,
                                width: 13.adaptSize,
                                decoration: BoxDecoration(
                                    color: theme.colorScheme.primary,
                                    borderRadius: BorderRadius.circular(6.h))))
                      ]))
                ])),
            SizedBox(height: 16.v),
            Padding(
                padding: EdgeInsets.only(right: 6.h),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgVisa,
                      height: 45.v,
                      width: 63.h),
                  Expanded(
                      child: BlocSelector<Iphone13MiniTwelveBloc,
                              Iphone13MiniTwelveState, String?>(
                          selector: (state) => state.radioGroup,
                          builder: (context, radioGroup) {
                            return Padding(
                                padding: EdgeInsets.only(
                                    left: 16.h, top: 2.v, bottom: 2.v),
                                child: CustomRadioButton(
                                    width: 286.h,
                                    text: "lbl_credit_card".tr,
                                    value: "lbl_credit_card".tr ?? "",
                                    groupValue: radioGroup,
                                    padding:
                                        EdgeInsets.symmetric(vertical: 7.v),
                                    isRightCheck: true,
                                    onChange: (value) {
                                      context
                                          .read<Iphone13MiniTwelveBloc>()
                                          .add(ChangeRadioButtonEvent(
                                              value: value));
                                    }));
                          }))
                ])),
            SizedBox(height: 24.v),
            Padding(
                padding: EdgeInsets.only(left: 10.h, right: 6.h),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgUserOnprimarycontainer,
                      height: 40.adaptSize,
                      width: 40.adaptSize),
                  Padding(
                      padding:
                          EdgeInsets.only(left: 16.h, top: 9.v, bottom: 6.v),
                      child: Text("msg_cash_on_delivery".tr,
                          style: CustomTextStyles.titleMedium16)),
                  Spacer(),
                  CustomImageView(
                      imagePath: ImageConstant.imgContrast,
                      height: 40.adaptSize,
                      width: 40.adaptSize)
                ])),
            SizedBox(height: 3.v)
          ]))
    ]);
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  /// Common widget
  Widget _buildRow(
    BuildContext context, {
    required String totalLabel,
    required String priceLabel,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(totalLabel,
          style: CustomTextStyles.bodyLargePoppins_1.copyWith(
              color: theme.colorScheme.onPrimaryContainer.withOpacity(1))),
      Text(priceLabel,
          style: theme.textTheme.titleMedium!.copyWith(
              color: theme.colorScheme.onPrimaryContainer.withOpacity(1)))
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

  /// Navigates to the successScreen when the action is triggered.
  onTapConfirmOrder(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.successScreen,
    );
  }
}
