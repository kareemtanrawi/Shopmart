// ignore_for_file: must_be_immutable

part of 'iphone_13_mini_eight_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Iphone13MiniEightTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Iphone13MiniEightTabContainerEvent extends Equatable {}

/// Event that is dispatched when the Iphone13MiniEightTabContainer widget is first created.
class Iphone13MiniEightTabContainerInitialEvent
    extends Iphone13MiniEightTabContainerEvent {
  @override
  List<Object?> get props => [];
}
