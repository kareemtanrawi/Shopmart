// ignore_for_file: must_be_immutable

part of 'iphone_13_mini_eleven_bloc.dart';

/// Represents the state of Iphone13MiniEleven in the application.
class Iphone13MiniElevenState extends Equatable {
  Iphone13MiniElevenState({this.iphone13MiniElevenModelObj});

  Iphone13MiniElevenModel? iphone13MiniElevenModelObj;

  @override
  List<Object?> get props => [
        iphone13MiniElevenModelObj,
      ];
  Iphone13MiniElevenState copyWith(
      {Iphone13MiniElevenModel? iphone13MiniElevenModelObj}) {
    return Iphone13MiniElevenState(
      iphone13MiniElevenModelObj:
          iphone13MiniElevenModelObj ?? this.iphone13MiniElevenModelObj,
    );
  }
}
