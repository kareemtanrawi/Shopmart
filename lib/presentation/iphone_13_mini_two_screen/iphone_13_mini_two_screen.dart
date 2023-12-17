import 'bloc/iphone_13_mini_two_bloc.dart';
import 'models/iphone_13_mini_two_model.dart';
import 'package:flutter/material.dart';
import 'package:kareem_s_application1/core/app_export.dart';

class Iphone13MiniTwoScreen extends StatelessWidget {
  const Iphone13MiniTwoScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<Iphone13MiniTwoBloc>(
      create: (context) => Iphone13MiniTwoBloc(Iphone13MiniTwoState(
        iphone13MiniTwoModelObj: Iphone13MiniTwoModel(),
      ))
        ..add(Iphone13MiniTwoInitialEvent()),
      child: Iphone13MiniTwoScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<Iphone13MiniTwoBloc, Iphone13MiniTwoState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: appTheme.teal50,
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                children: [
                  SizedBox(height: 792.v),
                  _buildScrollView(context),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildScrollView(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(
            left: 44.h,
            right: 48.h,
          ),
          padding: EdgeInsets.symmetric(
            horizontal: 34.h,
            vertical: 118.v,
          ),
          decoration: AppDecoration.fillLightBlue.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder141,
          ),
          child: Text(
            "lbl_shopmart".tr,
            textAlign: TextAlign.center,
            style: theme.textTheme.displayMedium,
          ),
        ),
      ),
    );
  }
}
