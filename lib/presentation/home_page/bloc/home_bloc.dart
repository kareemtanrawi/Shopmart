import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/supermarketcomponent_item_model.dart';
import '../models/viewhierarchy_item_model.dart';
import 'package:kareem_s_application1/presentation/home_page/models/home_model.dart';
part 'home_event.dart';
part 'home_state.dart';

/// A bloc that manages the state of a Home according to the event that is dispatched to it.
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc(HomeState initialState) : super(initialState) {
    on<HomeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    HomeInitialEvent event,
    Emitter<HomeState> emit,
  ) async {
    emit(state.copyWith(
        homeModelObj: state.homeModelObj?.copyWith(
      supermarketcomponentItemList: fillSupermarketcomponentItemList(),
      viewhierarchyItemList: fillViewhierarchyItemList(),
    )));
  }

  List<SupermarketcomponentItemModel> fillSupermarketcomponentItemList() {
    return [
      SupermarketcomponentItemModel(
          supermarketImage: ImageConstant.imgEllipse5,
          supermarketText: "Supermarket"),
      SupermarketcomponentItemModel(
          supermarketImage: ImageConstant.imgEllipse4,
          supermarketText: "Mobiles"),
      SupermarketcomponentItemModel(
          supermarketImage: ImageConstant.imgEllipse6,
          supermarketText: "Beauty"),
      SupermarketcomponentItemModel(
          supermarketImage: ImageConstant.imgEllipse7, supermarketText: "Baby"),
      SupermarketcomponentItemModel(
          supermarketImage: ImageConstant.imgEllipse765x69,
          supermarketText: "Bath & Body"),
      SupermarketcomponentItemModel(
          supermarketImage: ImageConstant.imgEllipse8,
          supermarketText: "Electronics"),
      SupermarketcomponentItemModel(
          supermarketImage: ImageConstant.imgEllipse9,
          supermarketText: "Appliances")
    ];
  }

  List<ViewhierarchyItemModel> fillViewhierarchyItemList() {
    return [
      ViewhierarchyItemModel(
          image: ImageConstant.imgRectangle59, text1: "-50%", text2: "-50%")
    ];
  }
}
