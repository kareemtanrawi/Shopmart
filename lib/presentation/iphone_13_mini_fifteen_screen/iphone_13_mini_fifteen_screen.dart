import '../iphone_13_mini_fifteen_screen/widgets/electronicsgrid_item_widget.dart';
import 'bloc/iphone_13_mini_fifteen_bloc.dart';
import 'models/electronicsgrid_item_model.dart';
import 'models/iphone_13_mini_fifteen_model.dart';
import 'package:flutter/material.dart';
import 'package:kareem_s_application1/core/app_export.dart';
import 'package:kareem_s_application1/widgets/app_bar/appbar_title_searchview.dart';
import 'package:kareem_s_application1/widgets/app_bar/custom_app_bar.dart';

class Iphone13MiniFifteenScreen extends StatelessWidget {
  const Iphone13MiniFifteenScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<Iphone13MiniFifteenBloc>(
      create: (context) => Iphone13MiniFifteenBloc(Iphone13MiniFifteenState(
        iphone13MiniFifteenModelObj: Iphone13MiniFifteenModel(),
      ))
        ..add(Iphone13MiniFifteenInitialEvent()),
      child: Iphone13MiniFifteenScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 15.v),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.h),
              child: Column(
                children: [
                  SizedBox(
                    height: 696.v,
                    width: 343.h,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 7.h),
                            child: Text(
                              "lbl_electornics".tr,
                              style: theme.textTheme.bodyLarge,
                            ),
                          ),
                        ),
                        _buildElectronicsGrid(context),
                      ],
                    ),
                  ),
                  SizedBox(height: 24.v),
                  _buildBabyCareRow(context),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 85.v,
      centerTitle: true,
      title: BlocSelector<Iphone13MiniFifteenBloc, Iphone13MiniFifteenState,
          TextEditingController?>(
        selector: (state) => state.searchController,
        builder: (context, searchController) {
          return AppbarTitleSearchview(
            hintText: "msg_search_on_shopmart".tr,
            controller: searchController,
          );
        },
      ),
      styleType: Style.bgFill_2,
    );
  }

  /// Section Widget
  Widget _buildElectronicsGrid(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: BlocSelector<Iphone13MiniFifteenBloc, Iphone13MiniFifteenState,
          Iphone13MiniFifteenModel?>(
        selector: (state) => state.iphone13MiniFifteenModelObj,
        builder: (context, iphone13MiniFifteenModelObj) {
          return GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 21.v,
              crossAxisCount: 2,
              mainAxisSpacing: 102.h,
              crossAxisSpacing: 102.h,
            ),
            physics: NeverScrollableScrollPhysics(),
            itemCount:
                iphone13MiniFifteenModelObj?.electronicsgridItemList.length ??
                    0,
            itemBuilder: (context, index) {
              ElectronicsgridItemModel model =
                  iphone13MiniFifteenModelObj?.electronicsgridItemList[index] ??
                      ElectronicsgridItemModel();
              return ElectronicsgridItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildBabyCareRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(right: 11.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 7.h),
                  child: Text(
                    "lbl_baby_care".tr,
                    textAlign: TextAlign.center,
                    style: theme.textTheme.bodyLarge,
                  ),
                ),
                SizedBox(height: 6.v),
                SizedBox(
                  height: 191.v,
                  width: 160.h,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          height: 190.v,
                          width: 160.h,
                          decoration: BoxDecoration(
                            color: appTheme.whiteA700,
                            borderRadius: BorderRadius.circular(
                              15.h,
                            ),
                            border: Border.all(
                              color: appTheme.gray400,
                              width: 1.h,
                            ),
                          ),
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgImage10,
                        height: 190.v,
                        width: 160.h,
                        radius: BorderRadius.circular(
                          15.h,
                        ),
                        alignment: Alignment.center,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(left: 11.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 7.h),
                  child: Text(
                    "lbl_gaming".tr,
                    textAlign: TextAlign.center,
                    style: theme.textTheme.bodyLarge,
                  ),
                ),
                SizedBox(height: 6.v),
                Container(
                  height: 190.v,
                  width: 160.h,
                  decoration: AppDecoration.outlineGray400.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder15,
                  ),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgImage11,
                    height: 190.v,
                    width: 160.h,
                    radius: BorderRadius.circular(
                      15.h,
                    ),
                    alignment: Alignment.center,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
