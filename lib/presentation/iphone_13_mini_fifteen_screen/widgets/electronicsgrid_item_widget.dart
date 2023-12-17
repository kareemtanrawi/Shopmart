import '../models/electronicsgrid_item_model.dart';
import 'package:flutter/material.dart';
import 'package:kareem_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class ElectronicsgridItemWidget extends StatelessWidget {
  ElectronicsgridItemWidget(
    this.electronicsgridItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ElectronicsgridItemModel electronicsgridItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Text(
        electronicsgridItemModelObj.electornics!,
        style: theme.textTheme.bodyLarge,
      ),
    );
  }
}
