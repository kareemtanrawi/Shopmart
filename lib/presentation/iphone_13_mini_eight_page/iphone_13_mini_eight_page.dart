import 'bloc/iphone_13_mini_eight_bloc.dart';
import 'models/iphone_13_mini_eight_model.dart';
import 'package:flutter/material.dart';
import 'package:kareem_s_application1/core/app_export.dart';
import 'package:kareem_s_application1/core/utils/validation_functions.dart';
import 'package:kareem_s_application1/widgets/custom_elevated_button.dart';
import 'package:kareem_s_application1/widgets/custom_text_form_field.dart';

class Iphone13MiniEightPage extends StatefulWidget {
  const Iphone13MiniEightPage({Key? key}) : super(key: key);

  @override
  Iphone13MiniEightPageState createState() => Iphone13MiniEightPageState();

  static Widget builder(BuildContext context) {
    return BlocProvider<Iphone13MiniEightBloc>(
        create: (context) => Iphone13MiniEightBloc(Iphone13MiniEightState(
            iphone13MiniEightModelObj: Iphone13MiniEightModel()))
          ..add(Iphone13MiniEightInitialEvent()),
        child: Iphone13MiniEightPage());
  }
}

// ignore_for_file: must_be_immutable
class Iphone13MiniEightPageState extends State<Iphone13MiniEightPage>
    with AutomaticKeepAliveClientMixin<Iphone13MiniEightPage> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  bool get wantKeepAlive => true;

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
                    decoration: AppDecoration.fillWhiteA,
                    child: Column(children: [
                      SizedBox(height: 44.v),
                      Expanded(
                          child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 24.h),
                              child: Column(children: [
                                Text("msg_account_verification".tr,
                                    style: theme.textTheme.headlineSmall),
                                SizedBox(height: 25.v),
                                _buildAccountVerification(context),
                                Spacer(),
                                CustomElevatedButton(
                                    text: "lbl_login".tr,
                                    onPressed: () {
                                      onTapLogin(context);
                                    })
                              ])))
                    ])))));
  }

  /// Section Widget
  Widget _buildAccountVerification(BuildContext context) {
    return Column(children: [
      Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
                height: 2.v,
                width: 20.h,
                margin: EdgeInsets.only(top: 11.v, bottom: 10.v),
                decoration: BoxDecoration(
                    color:
                        theme.colorScheme.secondaryContainer.withOpacity(1))),
            Padding(
                padding: EdgeInsets.only(left: 7.h),
                child: Text("lbl_password".tr,
                    style: CustomTextStyles.bodyLargePoppinsGray800)),
            Container(
                height: 2.v,
                width: 20.h,
                margin: EdgeInsets.only(left: 7.h, top: 11.v, bottom: 10.v),
                decoration: BoxDecoration(
                    color: theme.colorScheme.secondaryContainer.withOpacity(1)))
          ]),
      SizedBox(height: 15.v),
      BlocBuilder<Iphone13MiniEightBloc, Iphone13MiniEightState>(
          builder: (context, state) {
        return CustomTextFormField(
            controller: state.passwordController,
            hintText: "lbl".tr,
            textInputAction: TextInputAction.done,
            textInputType: TextInputType.visiblePassword,
            suffix: InkWell(
                onTap: () {
                  context.read<Iphone13MiniEightBloc>().add(
                      ChangePasswordVisibilityEvent(
                          value: !state.isShowPassword));
                },
                child: Container(
                    margin: EdgeInsets.fromLTRB(30.h, 17.v, 16.h, 17.v),
                    child: CustomImageView(
                        imagePath: ImageConstant.imgEye,
                        height: 12.v,
                        width: 16.h))),
            suffixConstraints: BoxConstraints(maxHeight: 48.v),
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

  /// Navigates to the loginScreen when the action is triggered.
  onTapLogin(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.loginScreen,
    );
  }
}
