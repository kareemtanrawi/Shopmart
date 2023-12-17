// ignore_for_file: must_be_immutable

part of 'iphone_13_mini_seven_bloc.dart';

/// Represents the state of Iphone13MiniSeven in the application.
class Iphone13MiniSevenState extends Equatable {
  Iphone13MiniSevenState({
    this.otpController,
    this.iphone13MiniSevenModelObj,
  });

  TextEditingController? otpController;

  Iphone13MiniSevenModel? iphone13MiniSevenModelObj;

  @override
  List<Object?> get props => [
        otpController,
        iphone13MiniSevenModelObj,
      ];
  Iphone13MiniSevenState copyWith({
    TextEditingController? otpController,
    Iphone13MiniSevenModel? iphone13MiniSevenModelObj,
  }) {
    return Iphone13MiniSevenState(
      otpController: otpController ?? this.otpController,
      iphone13MiniSevenModelObj:
          iphone13MiniSevenModelObj ?? this.iphone13MiniSevenModelObj,
    );
  }
}
