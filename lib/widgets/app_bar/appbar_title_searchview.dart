import 'package:flutter/material.dart';
import 'package:kareem_s_application1/core/app_export.dart';
import 'package:kareem_s_application1/widgets/custom_search_view.dart';

// ignore: must_be_immutable
class AppbarTitleSearchview extends StatelessWidget {
  AppbarTitleSearchview({
    Key? key,
    this.hintText,
    this.controller,
    this.margin,
  }) : super(
          key: key,
        );

  String? hintText;

  TextEditingController? controller;

  EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: CustomSearchView(
        width: 360.h,
        controller: controller,
        hintText: "msg_search_on_shopmart".tr,
      ),
    );
  }
}
