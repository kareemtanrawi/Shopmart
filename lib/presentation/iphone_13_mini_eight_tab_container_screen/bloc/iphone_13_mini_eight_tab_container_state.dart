// ignore_for_file: must_be_immutable

part of 'iphone_13_mini_eight_tab_container_bloc.dart';

/// Represents the state of Iphone13MiniEightTabContainer in the application.
class Iphone13MiniEightTabContainerState extends Equatable {
  Iphone13MiniEightTabContainerState(
      {this.iphone13MiniEightTabContainerModelObj});

  Iphone13MiniEightTabContainerModel? iphone13MiniEightTabContainerModelObj;

  @override
  List<Object?> get props => [
        iphone13MiniEightTabContainerModelObj,
      ];
  Iphone13MiniEightTabContainerState copyWith(
      {Iphone13MiniEightTabContainerModel?
          iphone13MiniEightTabContainerModelObj}) {
    return Iphone13MiniEightTabContainerState(
      iphone13MiniEightTabContainerModelObj:
          iphone13MiniEightTabContainerModelObj ??
              this.iphone13MiniEightTabContainerModelObj,
    );
  }
}
