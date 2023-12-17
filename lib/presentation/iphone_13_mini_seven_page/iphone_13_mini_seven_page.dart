import 'bloc/iphone_13_mini_seven_bloc.dart';
import 'models/iphone_13_mini_seven_model.dart';
import 'package:flutter/material.dart';
import 'package:kareem_s_application1/core/app_export.dart';
import 'package:kareem_s_application1/widgets/custom_elevated_button.dart';
import 'package:kareem_s_application1/widgets/custom_pin_code_text_field.dart';

// ignore_for_file: must_be_immutable
class Iphone13MiniSevenPage extends StatefulWidget {
  const Iphone13MiniSevenPage({Key? key})
      : super(
          key: key,
        );

  @override
  Iphone13MiniSevenPageState createState() => Iphone13MiniSevenPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<Iphone13MiniSevenBloc>(
      create: (context) => Iphone13MiniSevenBloc(Iphone13MiniSevenState(
        iphone13MiniSevenModelObj: Iphone13MiniSevenModel(),
      ))
        ..add(Iphone13MiniSevenInitialEvent()),
      child: Iphone13MiniSevenPage(),
    );
  }
}

class Iphone13MiniSevenPageState extends State<Iphone13MiniSevenPage>
    with AutomaticKeepAliveClientMixin<Iphone13MiniSevenPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillWhiteA,
          child: Column(
            children: [
              SizedBox(height: 38.v),
              _buildOtpView(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildOtpView(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 24.h,
        right: 28.h,
      ),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.only(right: 46.h),
              child: Text(
                "msg_verify_your_phone".tr,
                style: theme.textTheme.headlineSmall,
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              width: 163.h,
              margin: EdgeInsets.only(right: 71.h),
              child: Text(
                "msg_otp_has_been_sent2".tr,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: CustomTextStyles.bodyLargePoppinsGray800,
              ),
            ),
          ),
          SizedBox(height: 26.v),
          Padding(
            padding: EdgeInsets.only(
              left: 29.h,
              right: 20.h,
            ),
            child: BlocSelector<Iphone13MiniSevenBloc, Iphone13MiniSevenState,
                TextEditingController?>(
              selector: (state) => state.otpController,
              builder: (context, otpController) {
                return CustomPinCodeTextField(
                  context: context,
                  controller: otpController,
                  onChanged: (value) {
                    otpController?.text = value;
                  },
                );
              },
            ),
          ),
          SizedBox(height: 30.v),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "lbl_00_00".tr,
                  style: CustomTextStyles.titleMediumGray800,
                ),
                TextSpan(
                  text: " ",
                ),
                TextSpan(
                  text: "lbl_resend_otp".tr,
                  style: CustomTextStyles.bodyLargePoppinsBlue900,
                ),
              ],
            ),
            textAlign: TextAlign.left,
          ),
          SizedBox(height: 67.v),
          CustomElevatedButton(
            text: "lbl_continue2".tr,
            buttonTextStyle: CustomTextStyles.titleMediumWhiteA700,
          ),
        ],
      ),
    );
  }
}
