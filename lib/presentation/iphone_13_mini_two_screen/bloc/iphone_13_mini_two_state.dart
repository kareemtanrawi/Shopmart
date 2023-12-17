// ignore_for_file: must_be_immutable

part of 'iphone_13_mini_two_bloc.dart';

/// Represents the state of Iphone13MiniTwo in the application.
class Iphone13MiniTwoState extends Equatable {
  Iphone13MiniTwoState({this.iphone13MiniTwoModelObj});

  Iphone13MiniTwoModel? iphone13MiniTwoModelObj;

  @override
  List<Object?> get props => [
        iphone13MiniTwoModelObj,
      ];
  Iphone13MiniTwoState copyWith(
      {Iphone13MiniTwoModel? iphone13MiniTwoModelObj}) {
    return Iphone13MiniTwoState(
      iphone13MiniTwoModelObj:
          iphone13MiniTwoModelObj ?? this.iphone13MiniTwoModelObj,
    );
  }
}
