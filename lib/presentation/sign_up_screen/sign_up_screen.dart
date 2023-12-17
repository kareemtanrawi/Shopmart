import 'bloc/sign_up_bloc.dart';
import 'models/sign_up_model.dart';
import 'package:flutter/material.dart';
import 'package:kareem_s_application1/core/app_export.dart';
import 'package:kareem_s_application1/core/utils/validation_functions.dart';
import 'package:kareem_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:kareem_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:kareem_s_application1/widgets/custom_elevated_button.dart';
import 'package:kareem_s_application1/widgets/custom_text_form_field.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<SignUpBloc>(
      create: (context) => SignUpBloc(SignUpState(
        signUpModelObj: SignUpModel(),
      ))
        ..add(SignUpInitialEvent()),
      child: SignUpScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Form(
          key: _formKey,
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 24.h,
              vertical: 17.v,
            ),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 8.h),
                    child: Text(
                      "lbl_sign_up2".tr,
                      style: CustomTextStyles.headlineSmallBluegray900,
                    ),
                  ),
                ),
                SizedBox(height: 19.v),
                _buildSignUpFrame(context),
                SizedBox(height: 91.v),
                CustomElevatedButton(
                  text: "lbl_continue2".tr,
                  buttonTextStyle: CustomTextStyles.titleMediumWhiteA700,
                ),
                SizedBox(height: 5.v),
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
      height: 40.v,
      leadingWidth: double.maxFinite,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgVectorOnprimary,
        margin: EdgeInsets.fromLTRB(19.h, 4.v, 338.h, 4.v),
      ),
    );
  }

  /// Section Widget
  Widget _buildSignUpFrame(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_email".tr,
          style: CustomTextStyles.titleSmallBluegray900,
        ),
        BlocSelector<SignUpBloc, SignUpState, TextEditingController?>(
          selector: (state) => state.emailController,
          builder: (context, emailController) {
            return CustomTextFormField(
              controller: emailController,
              hintText: "msg_enter_your_email".tr,
              textInputAction: TextInputAction.done,
              textInputType: TextInputType.emailAddress,
              validator: (value) {
                if (value == null || (!isValidEmail(value, isRequired: true))) {
                  return "err_msg_please_enter_valid_email".tr;
                }
                return null;
              },
              contentPadding: EdgeInsets.symmetric(
                horizontal: 16.h,
                vertical: 14.v,
              ),
            );
          },
        ),
      ],
    );
  }
}
