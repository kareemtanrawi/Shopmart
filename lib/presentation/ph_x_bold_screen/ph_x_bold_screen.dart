import 'bloc/ph_x_bold_bloc.dart';
import 'models/ph_x_bold_model.dart';
import 'package:flutter/material.dart';
import 'package:kareem_s_application1/core/app_export.dart';

class PhXBoldScreen extends StatelessWidget {
  const PhXBoldScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<PhXBoldBloc>(
      create: (context) => PhXBoldBloc(PhXBoldState(
        phXBoldModelObj: PhXBoldModel(),
      ))
        ..add(PhXBoldInitialEvent()),
      child: PhXBoldScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<PhXBoldBloc, PhXBoldState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              height: 256.adaptSize,
              width: 256.adaptSize,
            ),
          ),
        );
      },
    );
  }
}
