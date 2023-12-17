// ignore_for_file: must_be_immutable

part of 'iphone_13_mini_twelve_bloc.dart';

/// Represents the state of Iphone13MiniTwelve in the application.
class Iphone13MiniTwelveState extends Equatable {
  Iphone13MiniTwelveState({
    this.enterCodeController,
    this.radioGroup = "",
    this.iphone13MiniTwelveModelObj,
  });

  TextEditingController? enterCodeController;

  Iphone13MiniTwelveModel? iphone13MiniTwelveModelObj;

  String radioGroup;

  @override
  List<Object?> get props => [
        enterCodeController,
        radioGroup,
        iphone13MiniTwelveModelObj,
      ];
  Iphone13MiniTwelveState copyWith({
    TextEditingController? enterCodeController,
    String? radioGroup,
    Iphone13MiniTwelveModel? iphone13MiniTwelveModelObj,
  }) {
    return Iphone13MiniTwelveState(
      enterCodeController: enterCodeController ?? this.enterCodeController,
      radioGroup: radioGroup ?? this.radioGroup,
      iphone13MiniTwelveModelObj:
          iphone13MiniTwelveModelObj ?? this.iphone13MiniTwelveModelObj,
    );
  }
}
