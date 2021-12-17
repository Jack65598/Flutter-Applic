import 'package:equatable/equatable.dart';
import 'package:flutter_cubit/model/data_modle.dart';

abstract class CubitStates extends Equatable {}

class InitialState extends CubitStates {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class WelcomeState extends CubitStates {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class LoadingState extends CubitStates {
  @override
  // TODO: implement props
  List<Object?> get props => [];

  get places => null;
}

class LoadedState extends CubitStates {
  LoadedState(this.places);
  final List<DataModle> places;
  @override
  // TODO: implement props
  List<Object?> get props => [places];
}

class DetailState extends CubitStates {
  DetailState(this.places);
  final DataModle places;
  @override
  // TODO: implement props
  List<Object?> get props => [places];
}
