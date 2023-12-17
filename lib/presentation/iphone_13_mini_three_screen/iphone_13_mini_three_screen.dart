import 'bloc/iphone_13_mini_three_bloc.dart';
import 'models/iphone_13_mini_three_model.dart';
import 'package:flutter/material.dart';
import 'package:kareem_s_application1/core/app_export.dart';

class Iphone13MiniThreeScreen extends StatelessWidget {
  const Iphone13MiniThreeScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<Iphone13MiniThreeBloc>(
      create: (context) => Iphone13MiniThreeBloc(Iphone13MiniThreeState(
        iphone13MiniThreeModelObj: Iphone13MiniThreeModel(),
      ))
        ..add(Iphone13MiniThreeInitialEvent()),
      child: Iphone13MiniThreeScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<Iphone13MiniThreeBloc, Iphone13MiniThreeState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: appTheme.teal50,
            body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(horizontal: 38.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 5.v),
                  Container(
                    margin: EdgeInsets.only(left: 16.h),
                    padding: EdgeInsets.symmetric(
                      horizontal: 34.h,
                      vertical: 117.v,
                    ),
                    decoration: AppDecoration.fillLightBlue.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder141,
                    ),
                    child: Text(
                      "lbl_shopmart".tr,
                      style: theme.textTheme.displayMedium,
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
}
