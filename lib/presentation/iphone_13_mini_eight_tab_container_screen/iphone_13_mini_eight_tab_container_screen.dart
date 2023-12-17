import 'bloc/iphone_13_mini_eight_tab_container_bloc.dart';
import 'models/iphone_13_mini_eight_tab_container_model.dart';
import 'package:flutter/material.dart';
import 'package:kareem_s_application1/core/app_export.dart';
import 'package:kareem_s_application1/presentation/iphone_13_mini_seven_page/iphone_13_mini_seven_page.dart';
import 'package:kareem_s_application1/widgets/app_bar/custom_app_bar.dart';

class Iphone13MiniEightTabContainerScreen extends StatefulWidget {
  const Iphone13MiniEightTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Iphone13MiniEightTabContainerScreenState createState() =>
      Iphone13MiniEightTabContainerScreenState();
  static Widget builder(BuildContext context) {
    return BlocProvider<Iphone13MiniEightTabContainerBloc>(
      create: (context) =>
          Iphone13MiniEightTabContainerBloc(Iphone13MiniEightTabContainerState(
        iphone13MiniEightTabContainerModelObj:
            Iphone13MiniEightTabContainerModel(),
      ))
            ..add(Iphone13MiniEightTabContainerInitialEvent()),
      child: Iphone13MiniEightTabContainerScreen(),
    );
  }
}

class Iphone13MiniEightTabContainerScreenState
    extends State<Iphone13MiniEightTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<Iphone13MiniEightTabContainerBloc,
        Iphone13MiniEightTabContainerState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                children: [
                  SizedBox(height: 18.v),
                  _buildTabview(context),
                  SizedBox(
                    height: 653.v,
                    child: TabBarView(
                      controller: tabviewController,
                      children: [
                        Iphone13MiniSevenPage(),
                        Iphone13MiniSevenPage(),
                      ],
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
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 40.v,
      leadingWidth: double.maxFinite,
      leading: Container(
        height: 24.adaptSize,
        width: 24.adaptSize,
        margin: EdgeInsets.only(
          left: 16.h,
          right: 335.h,
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgArrowLeftUndefined,
              height: 24.adaptSize,
              width: 24.adaptSize,
              alignment: Alignment.center,
            ),
            CustomImageView(
              imagePath: ImageConstant.imgArrowLeftUndefined,
              height: 24.adaptSize,
              width: 24.adaptSize,
              alignment: Alignment.center,
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
      height: 57.v,
      width: 343.h,
      decoration: BoxDecoration(
        color: appTheme.gray800.withOpacity(0.67),
        borderRadius: BorderRadius.circular(
          20.h,
        ),
      ),
      child: TabBar(
        controller: tabviewController,
        labelPadding: EdgeInsets.zero,
        labelColor: appTheme.gray800,
        labelStyle: TextStyle(
          fontSize: 14.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
        unselectedLabelColor: appTheme.whiteA700,
        unselectedLabelStyle: TextStyle(
          fontSize: 14.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
        indicatorPadding: EdgeInsets.all(
          11.0.h,
        ),
        indicator: BoxDecoration(
          color: appTheme.whiteA700,
          borderRadius: BorderRadius.circular(
            15.h,
          ),
        ),
        tabs: [
          Tab(
            child: Text(
              "lbl_login_with_otp".tr,
            ),
          ),
          Tab(
            child: Text(
              "msg_login_with_password".tr,
            ),
          ),
        ],
      ),
    );
  }
}
