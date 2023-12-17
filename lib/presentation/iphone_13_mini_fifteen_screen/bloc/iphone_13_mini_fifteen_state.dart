// ignore_for_file: must_be_immutable

part of 'iphone_13_mini_fifteen_bloc.dart';

/// Represents the state of Iphone13MiniFifteen in the application.
class Iphone13MiniFifteenState extends Equatable {
  Iphone13MiniFifteenState({
    this.searchController,
    this.iphone13MiniFifteenModelObj,
  });

  TextEditingController? searchController;

  Iphone13MiniFifteenModel? iphone13MiniFifteenModelObj;

  @override
  List<Object?> get props => [
        searchController,
        iphone13MiniFifteenModelObj,
      ];
  Iphone13MiniFifteenState copyWith({
    TextEditingController? searchController,
    Iphone13MiniFifteenModel? iphone13MiniFifteenModelObj,
  }) {
    return Iphone13MiniFifteenState(
      searchController: searchController ?? this.searchController,
      iphone13MiniFifteenModelObj:
          iphone13MiniFifteenModelObj ?? this.iphone13MiniFifteenModelObj,
    );
  }
}
