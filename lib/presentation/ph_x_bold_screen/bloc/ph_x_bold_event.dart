// ignore_for_file: must_be_immutable

part of 'ph_x_bold_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PhXBold widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PhXBoldEvent extends Equatable {}

/// Event that is dispatched when the PhXBold widget is first created.
class PhXBoldInitialEvent extends PhXBoldEvent {
  @override
  List<Object?> get props => [];
}
