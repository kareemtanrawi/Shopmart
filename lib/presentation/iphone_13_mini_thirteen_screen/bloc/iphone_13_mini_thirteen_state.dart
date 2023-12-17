// ignore_for_file: must_be_immutable

part of 'iphone_13_mini_thirteen_bloc.dart';

/// Represents the state of Iphone13MiniThirteen in the application.
class Iphone13MiniThirteenState extends Equatable {
  Iphone13MiniThirteenState({this.iphone13MiniThirteenModelObj});

  Iphone13MiniThirteenModel? iphone13MiniThirteenModelObj;

  @override
  List<Object?> get props => [
        iphone13MiniThirteenModelObj,
      ];
  Iphone13MiniThirteenState copyWith(
      {Iphone13MiniThirteenModel? iphone13MiniThirteenModelObj}) {
    return Iphone13MiniThirteenState(
      iphone13MiniThirteenModelObj:
          iphone13MiniThirteenModelObj ?? this.iphone13MiniThirteenModelObj,
    );
  }
}
