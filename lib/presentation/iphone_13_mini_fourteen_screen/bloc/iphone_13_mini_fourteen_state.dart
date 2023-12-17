// ignore_for_file: must_be_immutable

part of 'iphone_13_mini_fourteen_bloc.dart';

/// Represents the state of Iphone13MiniFourteen in the application.
class Iphone13MiniFourteenState extends Equatable {
  Iphone13MiniFourteenState({this.iphone13MiniFourteenModelObj});

  Iphone13MiniFourteenModel? iphone13MiniFourteenModelObj;

  @override
  List<Object?> get props => [
        iphone13MiniFourteenModelObj,
      ];
  Iphone13MiniFourteenState copyWith(
      {Iphone13MiniFourteenModel? iphone13MiniFourteenModelObj}) {
    return Iphone13MiniFourteenState(
      iphone13MiniFourteenModelObj:
          iphone13MiniFourteenModelObj ?? this.iphone13MiniFourteenModelObj,
    );
  }
}
