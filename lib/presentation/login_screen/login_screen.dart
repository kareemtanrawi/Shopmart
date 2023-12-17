import 'bloc/login_bloc.dart';
import 'models/login_model.dart';
import 'package:flutter/material.dart';
import 'package:kareem_s_application1/core/app_export.dart';
import 'package:kareem_s_application1/core/utils/validation_functions.dart';
import 'package:kareem_s_application1/widgets/custom_elevated_button.dart';
import 'package:kareem_s_application1/widgets/custom_outlined_button.dart';
import 'package:kareem_s_application1/widgets/custom_text_form_field.dart';
import 'package:kareem_s_application1/domain/facebookauth/facebook_auth_helper.dart';
import 'package:kareem_s_application1/domain/googleauth/google_auth_helper.dart';

// ignore_for_file: must_be_immutable
class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<LoginBloc>(
        create: (context) => LoginBloc(LoginState(loginModelObj: LoginModel()))
          ..add(LoginInitialEvent()),
        child: LoginScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        EdgeInsets.symmetric(horizontal: 16.h, vertical: 42.v),
                    child: Column(children: [
                      Spacer(),
                      _buildLoginForm(context),
                      SizedBox(height: 11.v),
                      _buildPasswordForm(context),
                      SizedBox(height: 5.v),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                              padding: EdgeInsets.only(right: 4.h),
                              child: Text("lbl_forget_password".tr,
                                  style: CustomTextStyles.bodyMediumInter))),
                      SizedBox(height: 40.v),
                      CustomElevatedButton(
                          text: "lbl_login".tr,
                          margin: EdgeInsets.only(left: 11.h, right: 9.h),
                          onPressed: () {
                            onTapLogin(context);
                          }),
                      SizedBox(height: 15.v),
                      RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: "lbl_continue".tr,
                                style: CustomTextStyles
                                    .bodyLargePoppinsErrorContainer16),
                            TextSpan(
                                text: "lbl_as_a_guest".tr,
                                style: CustomTextStyles
                                    .bodyLargePoppinsErrorContainer16)
                          ]),
                          textAlign: TextAlign.left),
                      SizedBox(height: 17.v),
                      Text("lbl_or_login_with".tr,
                          style: CustomTextStyles.bodyMedium14
                              .copyWith(decoration: TextDecoration.underline)),
                      SizedBox(height: 22.v),
                      CustomOutlinedButton(
                          height: 48.v,
                          text: "msg_continue_with_facebook".tr,
                          margin: EdgeInsets.symmetric(horizontal: 8.h),
                          onPressed: () {
                            onTapContinueWithFacebook(context);
                          }),
                      SizedBox(height: 24.v),
                      CustomOutlinedButton(
                          height: 47.v,
                          text: "msg_continue_with_google".tr,
                          margin: EdgeInsets.only(left: 8.h, right: 9.h),
                          leftIcon: Container(
                              margin: EdgeInsets.only(right: 16.h),
                              child: CustomImageView(
                                  imagePath: ImageConstant.imgGoogle,
                                  height: 20.adaptSize,
                                  width: 20.adaptSize)),
                          onPressed: () {
                            onTapContinueWithGoogle(context);
                          }),
                      SizedBox(height: 22.v),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                                padding: EdgeInsets.only(bottom: 1.v),
                                child: Text("msg_don_t_have_an_account".tr,
                                    style: CustomTextStyles.bodyMedium14)),
                            GestureDetector(
                                onTap: () {
                                  onTapTxtSignUp(context);
                                },
                                child: Padding(
                                    padding: EdgeInsets.only(left: 2.h),
                                    child: Text("lbl_sign_up".tr,
                                        style: CustomTextStyles
                                            .bodyMediumErrorContainer
                                            .copyWith(
                                                decoration:
                                                    TextDecoration.underline))))
                          ])
                    ])))));
  }

  /// Section Widget
  Widget _buildLoginForm(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
          padding: EdgeInsets.only(left: 5.h),
          child: Text("msg_email_or_mobile".tr,
              style: CustomTextStyles.bodyMedium15)),
      SizedBox(height: 4.v),
      BlocSelector<LoginBloc, LoginState, TextEditingController?>(
          selector: (state) => state.mobileNumberController,
          builder: (context, mobileNumberController) {
            return CustomTextFormField(controller: mobileNumberController);
          })
    ]);
  }

  /// Section Widget
  Widget _buildPasswordForm(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
          padding: EdgeInsets.only(left: 5.h),
          child: Text("lbl_password".tr,
              style: CustomTextStyles.bodyLargePoppins)),
      SizedBox(height: 4.v),
      BlocBuilder<LoginBloc, LoginState>(builder: (context, state) {
        return CustomTextFormField(
            controller: state.passwordController,
            hintText: "lbl".tr,
            textInputAction: TextInputAction.done,
            textInputType: TextInputType.visiblePassword,
            suffix: InkWell(
                onTap: () {
                  context.read<LoginBloc>().add(ChangePasswordVisibilityEvent(
                      value: !state.isShowPassword));
                },
                child: Container(
                    margin: EdgeInsets.fromLTRB(30.h, 18.v, 20.h, 18.v),
                    child: CustomImageView(
                        imagePath: ImageConstant.imgEye,
                        height: 12.v,
                        width: 16.h))),
            suffixConstraints: BoxConstraints(maxHeight: 51.v),
            validator: (value) {
              if (value == null ||
                  (!isValidPassword(value, isRequired: true))) {
                return "err_msg_please_enter_valid_password".tr;
              }
              return null;
            },
            obscureText: state.isShowPassword);
      })
    ]);
  }

  /// Navigates to the loginnScreen when the action is triggered.
  onTapLogin(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.loginnScreen,
    );
  }

  onTapContinueWithFacebook(BuildContext context) async {
    await FacebookAuthHelper().facebookSignInProcess().then((facebookUser) {
      //TODO Actions to be performed after signin
    }).catchError((onError) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(onError.toString())));
    });
  }

  onTapContinueWithGoogle(BuildContext context) async {
    await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
      if (googleUser != null) {
        //TODO Actions to be performed after signin
      } else {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text('user data is empty')));
      }
    }).catchError((onError) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(onError.toString())));
    });
  }

  /// Navigates to the signUpScreen when the action is triggered.
  onTapTxtSignUp(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.signUpScreen,
    );
  }
}
