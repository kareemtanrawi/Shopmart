// ignore_for_file: must_be_immutable

part of 'frame_335_bloc.dart';

/// Represents the state of Frame335 in the application.
class Frame335State extends Equatable {
  Frame335State({this.frame335ModelObj});

  Frame335Model? frame335ModelObj;

  @override
  List<Object?> get props => [
        frame335ModelObj,
      ];
  Frame335State copyWith({Frame335Model? frame335ModelObj}) {
    return Frame335State(
      frame335ModelObj: frame335ModelObj ?? this.frame335ModelObj,
    );
  }
}
