import 'package:flutter/material.dart';
import 'package:kareem_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  CustomAppBar({
    Key? key,
    this.height,
    this.styleType,
    this.leadingWidth,
    this.leading,
    this.title,
    this.centerTitle,
    this.actions,
  }) : super(
          key: key,
        );

  final double? height;

  final Style? styleType;

  final double? leadingWidth;

  final Widget? leading;

  final Widget? title;

  final bool? centerTitle;

  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      toolbarHeight: height ?? 46.v,
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      flexibleSpace: _getStyle(),
      leadingWidth: leadingWidth ?? 0,
      leading: leading,
      title: title,
      titleSpacing: 0,
      centerTitle: centerTitle ?? false,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => Size(
        mediaQueryData.size.width,
        height ?? 46.v,
      );
  _getStyle() {
    switch (styleType) {
      case Style.bgFill_1:
        return Stack(
          children: [
            Container(
              height: 85.v,
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: appTheme.teal50,
              ),
            ),
            Container(
              height: 50.v,
              width: 360.h,
              margin: EdgeInsets.fromLTRB(8.h, 16.v, 7.h, 19.v),
              decoration: BoxDecoration(
                color: appTheme.whiteA700,
                borderRadius: BorderRadius.circular(
                  10.h,
                ),
              ),
            ),
          ],
        );
      case Style.bgFill_2:
        return Container(
          height: 85.v,
          width: double.maxFinite,
          decoration: BoxDecoration(
            color: appTheme.teal50,
          ),
        );
      case Style.bgFill:
        return Container(
          height: 46.v,
          width: double.maxFinite,
          decoration: BoxDecoration(
            color: appTheme.gray800.withOpacity(0.84),
          ),
        );
      default:
        return null;
    }
  }
}

enum Style {
  bgFill_1,
  bgFill_2,
  bgFill,
}
