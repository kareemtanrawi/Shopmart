// ignore_for_file: must_be_immutable

part of 'iphone_13_mini_eight_bloc.dart';

/// Represents the state of Iphone13MiniEight in the application.
class Iphone13MiniEightState extends Equatable {
  Iphone13MiniEightState({
    this.passwordController,
    this.isShowPassword = true,
    this.iphone13MiniEightModelObj,
  });

  TextEditingController? passwordController;

  Iphone13MiniEightModel? iphone13MiniEightModelObj;

  bool isShowPassword;

  @override
  List<Object?> get props => [
        passwordController,
        isShowPassword,
        iphone13MiniEightModelObj,
      ];
  Iphone13MiniEightState copyWith({
    TextEditingController? passwordController,
    bool? isShowPassword,
    Iphone13MiniEightModel? iphone13MiniEightModelObj,
  }) {
    return Iphone13MiniEightState(
      passwordController: passwordController ?? this.passwordController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      iphone13MiniEightModelObj:
          iphone13MiniEightModelObj ?? this.iphone13MiniEightModelObj,
    );
  }
}
