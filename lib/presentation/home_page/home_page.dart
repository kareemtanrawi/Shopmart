import '../home_page/widgets/supermarketcomponent_item_widget.dart';
import '../home_page/widgets/viewhierarchy_item_widget.dart';
import 'bloc/home_bloc.dart';
import 'models/home_model.dart';
import 'models/supermarketcomponent_item_model.dart';
import 'models/viewhierarchy_item_model.dart';
import 'package:flutter/material.dart';
import 'package:kareem_s_application1/core/app_export.dart';
import 'package:kareem_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:kareem_s_application1/widgets/app_bar/appbar_subtitle.dart';
import 'package:kareem_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:kareem_s_application1/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class HomePage extends StatelessWidget {
  const HomePage({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<HomeBloc>(
      create: (context) => HomeBloc(HomeState(
        homeModelObj: HomeModel(),
      ))
        ..add(HomeInitialEvent()),
      child: HomePage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                _buildEleven(context),
                _buildEightyFour(context),
                _buildFrame(context),
                SizedBox(height: 25.v),
                _buildSeventyNine(context),
                SizedBox(height: 23.v),
                _buildEightySeven(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 85.v,
      centerTitle: true,
      title: Container(
        padding: EdgeInsets.symmetric(horizontal: 8.h),
        decoration: AppDecoration.fillWhiteA.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: Row(
          children: [
            AppbarTitle(
              text: "lbl_shopmart2".tr,
              margin: EdgeInsets.only(bottom: 20.v),
            ),
            AppbarImage(
              imagePath: ImageConstant.imgMaterialSymbolsLightSearch,
              margin: EdgeInsets.symmetric(vertical: 13.v),
            ),
            AppbarSubtitle(
              text: "msg_search_on_shopmart".tr,
              margin: EdgeInsets.only(
                left: 16.h,
                top: 16.v,
                bottom: 9.v,
              ),
            ),
            Container(
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.only(
                left: 47.h,
                bottom: 26.v,
              ),
              decoration: BoxDecoration(
                color: appTheme.whiteA700,
                borderRadius: BorderRadius.circular(
                  12.h,
                ),
              ),
            ),
            AppbarImage(
              imagePath: ImageConstant.imgVector,
              margin: EdgeInsets.only(
                left: 23.h,
                top: 16.v,
                bottom: 14.v,
              ),
            ),
            Container(
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.only(
                right: 1.h,
                bottom: 26.v,
              ),
              decoration: BoxDecoration(
                color: appTheme.whiteA700,
                borderRadius: BorderRadius.circular(
                  12.h,
                ),
              ),
            ),
          ],
        ),
      ),
      styleType: Style.bgFill_1,
    );
  }

  /// Section Widget
  Widget _buildEleven(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 25.h,
        vertical: 18.v,
      ),
      decoration: AppDecoration.fillTeal40047,
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgLinkedin,
            height: 24.v,
            width: 17.h,
            margin: EdgeInsets.only(bottom: 3.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              bottom: 3.v,
            ),
            child: Text(
              "msg_deliver_to_nourhan".tr,
              style: CustomTextStyles.bodyLargePoppins16,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgCheckmark,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(
              left: 16.h,
              bottom: 3.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildEightyFour(BuildContext context) {
    return SizedBox(
      height: 143.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 143.v,
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: appTheme.teal50.withOpacity(0.09),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              height: 141.v,
              child: BlocSelector<HomeBloc, HomeState, HomeModel?>(
                selector: (state) => state.homeModelObj,
                builder: (context, homeModelObj) {
                  return ListView.separated(
                    padding: EdgeInsets.only(
                      left: 16.h,
                      top: 24.v,
                      bottom: 24.v,
                    ),
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (
                      context,
                      index,
                    ) {
                      return SizedBox(
                        width: 32.h,
                      );
                    },
                    itemCount:
                        homeModelObj?.supermarketcomponentItemList.length ?? 0,
                    itemBuilder: (context, index) {
                      SupermarketcomponentItemModel model =
                          homeModelObj?.supermarketcomponentItemList[index] ??
                              SupermarketcomponentItemModel();
                      return SupermarketcomponentItemWidget(
                        model,
                      );
                    },
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildImageOne(BuildContext context) {
    return CustomImageView(
      imagePath: ImageConstant.imgImage1,
      height: 180.v,
      width: 375.h,
      alignment: Alignment.center,
    );
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return SizedBox(
      height: 180.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.center,
        children: [
          _buildImageOne(context),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.only(right: 11.h),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: SizedBox(
                      height: 12.v,
                      width: 45.h,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              height: 10.v,
                              width: 45.h,
                              decoration: BoxDecoration(
                                color: appTheme.whiteA700,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Text(
                              "lbl_sponsored".tr,
                              style: theme.textTheme.bodySmall,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 112.v),
                  Padding(
                    padding: EdgeInsets.only(left: 4.h),
                    child: Text(
                      "lbl_up_to_50_off".tr,
                      style: CustomTextStyles.titleSmallOnPrimaryContainer,
                    ),
                  ),
                  SizedBox(height: 10.v),
                  Container(
                    height: 15.v,
                    width: 50.h,
                    margin: EdgeInsets.only(left: 55.h),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            height: 13.v,
                            width: 50.h,
                            decoration: BoxDecoration(
                              color: theme.colorScheme.onPrimaryContainer
                                  .withOpacity(1),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            "lbl_shop_now".tr,
                            style: theme.textTheme.labelMedium,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSeventyNine(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.h),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 1.v),
                child: Text(
                  "msg_keep_shopping_for".tr,
                  style: CustomTextStyles.titleSmallOnPrimaryContainer,
                ),
              ),
              Text(
                "lbl_see_all".tr,
                style: CustomTextStyles.titleSmallPrimary,
              ),
            ],
          ),
          SizedBox(height: 7.v),
          SizedBox(
            height: 148.v,
            child: BlocSelector<HomeBloc, HomeState, HomeModel?>(
              selector: (state) => state.homeModelObj,
              builder: (context, homeModelObj) {
                return ListView.separated(
                  padding: EdgeInsets.only(left: 8.h),
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (
                    context,
                    index,
                  ) {
                    return SizedBox(
                      width: 84.h,
                    );
                  },
                  itemCount: homeModelObj?.viewhierarchyItemList.length ?? 0,
                  itemBuilder: (context, index) {
                    ViewhierarchyItemModel model =
                        homeModelObj?.viewhierarchyItemList[index] ??
                            ViewhierarchyItemModel();
                    return ViewhierarchyItemWidget(
                      model,
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildEightySeven(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 20.h,
        right: 12.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 20.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 132.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgRectangle56,
                        height: 100.v,
                        width: 88.h,
                        margin: EdgeInsets.only(top: 14.v),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 86.v),
                        padding: EdgeInsets.symmetric(
                          horizontal: 3.h,
                          vertical: 4.v,
                        ),
                        decoration: AppDecoration.fillTeal50,
                        child: Text(
                          "lbl_20".tr,
                          style: theme.textTheme.labelLarge,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 4.v),
                Container(
                  width: 49.h,
                  margin: EdgeInsets.only(left: 16.h),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "lbl_lip_balm".tr,
                          style: CustomTextStyles
                              .labelLargeOnPrimaryContainerMedium,
                        ),
                        TextSpan(
                          text: "lbl_egp_150".tr,
                          style:
                              CustomTextStyles.labelLargeOnPrimaryContainer_1,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 131.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 116.v,
                      width: 89.h,
                      margin: EdgeInsets.only(top: 18.v),
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Align(
                            alignment: Alignment.topCenter,
                            child: Container(
                              height: 100.v,
                              width: 88.h,
                              decoration: BoxDecoration(
                                color: appTheme.blueGray100,
                              ),
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgRectangle58,
                            height: 100.v,
                            width: 88.h,
                            alignment: Alignment.bottomCenter,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 38.h,
                      margin: EdgeInsets.only(bottom: 106.v),
                      padding: EdgeInsets.symmetric(
                        horizontal: 3.h,
                        vertical: 4.v,
                      ),
                      decoration: AppDecoration.fillTeal50,
                      child: Text(
                        "lbl_30".tr,
                        style: theme.textTheme.labelLarge,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 4.v),
              Container(
                width: 47.h,
                margin: EdgeInsets.only(left: 26.h),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "lbl_hoodie".tr,
                        style:
                            CustomTextStyles.labelLargeOnPrimaryContainerMedium,
                      ),
                      TextSpan(
                        text: "lbl_egp_750".tr,
                        style: CustomTextStyles.labelLargeOnPrimaryContainer_1,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
