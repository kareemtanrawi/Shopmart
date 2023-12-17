// ignore_for_file: must_be_immutable

part of 'ph_x_bold_bloc.dart';

/// Represents the state of PhXBold in the application.
class PhXBoldState extends Equatable {
  PhXBoldState({this.phXBoldModelObj});

  PhXBoldModel? phXBoldModelObj;

  @override
  List<Object?> get props => [
        phXBoldModelObj,
      ];
  PhXBoldState copyWith({PhXBoldModel? phXBoldModelObj}) {
    return PhXBoldState(
      phXBoldModelObj: phXBoldModelObj ?? this.phXBoldModelObj,
    );
  }
}
