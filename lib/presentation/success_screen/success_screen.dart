import 'bloc/success_bloc.dart';
import 'models/success_model.dart';
import 'package:flutter/material.dart';
import 'package:kareem_s_application1/core/app_export.dart';
import 'package:kareem_s_application1/presentation/home_page/home_page.dart';
import 'package:kareem_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:kareem_s_application1/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:kareem_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:kareem_s_application1/widgets/custom_bottom_bar.dart';
import 'package:kareem_s_application1/widgets/custom_elevated_button.dart';
import 'package:kareem_s_application1/widgets/custom_outlined_button.dart';

class SuccessScreen extends StatelessWidget {
  SuccessScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<SuccessBloc>(
      create: (context) => SuccessBloc(SuccessState(
        successModelObj: SuccessModel(),
      ))
        ..add(SuccessInitialEvent()),
      child: SuccessScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<SuccessBloc, SuccessState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: appTheme.gray50,
            appBar: _buildAppBar(context),
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                children: [
                  Spacer(),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 24.h,
                      vertical: 32.v,
                    ),
                    decoration: AppDecoration.fillWhiteA.copyWith(
                      borderRadius: BorderRadiusStyle.customBorderTL24,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          height: 84.adaptSize,
                          width: 84.adaptSize,
                          padding: EdgeInsets.symmetric(
                            horizontal: 24.h,
                            vertical: 30.v,
                          ),
                          decoration: AppDecoration.fillPrimary.copyWith(
                            borderRadius: BorderRadiusStyle.circleBorder42,
                          ),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgClosePrimary,
                            height: 24.v,
                            width: 35.h,
                            alignment: Alignment.center,
                          ),
                        ),
                        SizedBox(height: 25.v),
                        SizedBox(
                          width: 153.h,
                          child: Text(
                            "msg_thank_you_for_your".tr,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style:
                                CustomTextStyles.titleLargeBluegray900.copyWith(
                              height: 1.45,
                            ),
                          ),
                        ),
                        SizedBox(height: 9.v),
                        Container(
                          width: 239.h,
                          margin: EdgeInsets.only(
                            left: 43.h,
                            right: 44.h,
                          ),
                          child: Text(
                            "msg_your_order_been".tr,
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: CustomTextStyles.bodySmallPrimaryContainer
                                .copyWith(
                              height: 1.83,
                            ),
                          ),
                        ),
                        SizedBox(height: 21.v),
                        CustomOutlinedButton(
                          height: 56.v,
                          text: "lbl_back_home".tr,
                          buttonStyle: CustomButtonStyles.outlineGray,
                          buttonTextStyle: CustomTextStyles.bodyMediumGray600,
                        ),
                        SizedBox(height: 16.v),
                        CustomElevatedButton(
                          height: 56.v,
                          text: "msg_track_your_order".tr,
                          buttonStyle: CustomButtonStyles.fillPrimaryTL14,
                          buttonTextStyle:
                              CustomTextStyles.titleMediumWhiteA700SemiBold16,
                        ),
                        SizedBox(height: 47.v),
                        Text(
                          "msg_you_can_order_somethings".tr,
                          style: CustomTextStyles.labelLargeWhiteA700,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            bottomNavigationBar: _buildBottomBar(context),
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
        text: "lbl_success".tr,
        margin: EdgeInsets.only(left: 16.h),
      ),
      styleType: Style.bgFill,
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
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
}
