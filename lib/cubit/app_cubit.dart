import 'package:bloc/bloc.dart';
import 'package:flutter_cubit/cubit/app_cubit_staes.dart';
import 'package:flutter_cubit/model/data_modle.dart';
import 'package:flutter_cubit/pages/detaill_page.dart';
import 'package:flutter_cubit/services/data_serviced.dart';

class AppCubits extends Cubit<CubitStates> {
  AppCubits({required this.data}) : super(InitialState()) {
    emit(WelcomeState());
  }
  final DataServices data;
  late final places;

  void getData() async {
    try {
      emit(LoadingState());
      places = await data.getInfo();
      emit(LoadedState(places));
    } catch (e) {}
  }

  detailPage(DataModle data) {
    emit(DetailState(data));
  }

  goHome() {
    emit(LoadedState(places));
  }
}
