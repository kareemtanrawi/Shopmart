import 'bloc/app_navigation_bloc.dart';
import 'models/app_navigation_model.dart';
import 'package:flutter/material.dart';
import 'package:kareem_s_application1/core/app_export.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<AppNavigationBloc>(
      create: (context) => AppNavigationBloc(AppNavigationState(
        appNavigationModelObj: AppNavigationModel(),
      ))
        ..add(AppNavigationInitialEvent()),
      child: AppNavigationScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<AppNavigationBloc, AppNavigationState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: Color(0XFFFFFFFF),
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                children: [
                  _buildAppNavigation(context),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0XFFFFFFFF),
                        ),
                        child: Column(
                          children: [
                            _buildScreenTitle(
                              context,
                              screenTitle: "ph:x-bold".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.phXBoldScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "iPhone 13 mini - Two".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.iphone13MiniTwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "iPhone 13 mini - Three".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.iphone13MiniThreeScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "login".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.loginScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "loginn".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.loginnScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Sign up".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.signUpScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "iPhone 13 mini - Eight - Tab Container".tr,
                              onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                                  .iphone13MiniEightTabContainerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "cart".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.cartScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "home - Container".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.homeContainerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "iPhone 13 mini - Eleven".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.iphone13MiniElevenScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "iPhone 13 mini - Twelve".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.iphone13MiniTwelveScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Success".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.successScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "iPhone 13 mini - Thirteen".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.iphone13MiniThirteenScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "iPhone 13 mini - Fourteen".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.iphone13MiniFourteenScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "iPhone 13 mini - Fifteen".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.iphone13MiniFifteenScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Frame 335".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.frame335Screen),
                            ),
                          ],
                        ),
                      ),
                    ),
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
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    NavigatorService.pushNamed(routeName);
  }
}
