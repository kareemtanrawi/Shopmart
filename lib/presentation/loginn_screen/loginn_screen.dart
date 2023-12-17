import 'bloc/loginn_bloc.dart';
import 'models/loginn_model.dart';
import 'package:flutter/material.dart';
import 'package:kareem_s_application1/core/app_export.dart';
import 'package:kareem_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:kareem_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:kareem_s_application1/widgets/custom_elevated_button.dart';
import 'package:kareem_s_application1/widgets/custom_pin_code_text_field.dart';

class LoginnScreen extends StatelessWidget {
  const LoginnScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<LoginnBloc>(
        create: (context) =>
            LoginnBloc(LoginnState(loginnModelObj: LoginnModel()))
              ..add(LoginnInitialEvent()),
        child: LoginnScreen());
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
                padding: EdgeInsets.only(left: 24.h, top: 60.v, right: 24.h),
                child: Column(children: [
                  Text("msg_verify_your_phone".tr,
                      style: theme.textTheme.headlineSmall),
                  SizedBox(
                      width: 163.h,
                      child: Text("msg_otp_has_been_sent".tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.bodyLargePoppinsGray800)),
                  Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                          padding: EdgeInsets.only(right: 124.h),
                          child: Text("lbl_via_sms".tr,
                              style:
                                  CustomTextStyles.bodyLargePoppinsGray800))),
                  SizedBox(height: 40.v),
                  Padding(
                      padding: EdgeInsets.only(left: 29.h, right: 24.h),
                      child: BlocSelector<LoginnBloc, LoginnState,
                              TextEditingController?>(
                          selector: (state) => state.otpController,
                          builder: (context, otpController) {
                            return CustomPinCodeTextField(
                                context: context,
                                controller: otpController,
                                onChanged: (value) {
                                  otpController?.text = value;
                                });
                          })),
                  SizedBox(height: 37.v),
                  RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "lbl_00_00".tr,
                            style: CustomTextStyles.titleMediumGray800),
                        TextSpan(text: " "),
                        TextSpan(
                            text: "msg_resend_otp_via_sms".tr,
                            style: CustomTextStyles.bodyLargePoppinsBlue900)
                      ]),
                      textAlign: TextAlign.left),
                  SizedBox(height: 77.v),
                  CustomElevatedButton(
                      text: "lbl_continue2".tr,
                      buttonTextStyle: CustomTextStyles.titleMediumWhiteA700,
                      onPressed: () {
                        onTapContinue(context);
                      }),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 40.v,
        leadingWidth: double.maxFinite,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgVectorOnprimary,
            margin: EdgeInsets.fromLTRB(19.h, 4.v, 338.h, 4.v)));
  }

  /// Navigates to the homeContainerScreen when the action is triggered.
  onTapContinue(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.homeContainerScreen,
    );
  }
}
