// ignore_for_file: must_be_immutable

part of 'iphone_13_mini_three_bloc.dart';

/// Represents the state of Iphone13MiniThree in the application.
class Iphone13MiniThreeState extends Equatable {
  Iphone13MiniThreeState({this.iphone13MiniThreeModelObj});

  Iphone13MiniThreeModel? iphone13MiniThreeModelObj;

  @override
  List<Object?> get props => [
        iphone13MiniThreeModelObj,
      ];
  Iphone13MiniThreeState copyWith(
      {Iphone13MiniThreeModel? iphone13MiniThreeModelObj}) {
    return Iphone13MiniThreeState(
      iphone13MiniThreeModelObj:
          iphone13MiniThreeModelObj ?? this.iphone13MiniThreeModelObj,
    );
  }
}
