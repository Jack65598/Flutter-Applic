import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cubit/cubit/app_cubit.dart';
import 'package:flutter_cubit/cubit/app_cubit_staes.dart';
import 'package:flutter_cubit/pages/detaill_page.dart';
import 'package:flutter_cubit/pages/home_page.dart';
import 'package:flutter_cubit/pages/welcom_page.dart';

class AppCubitLogics extends StatefulWidget {
  const AppCubitLogics({Key? key}) : super(key: key);

  @override
  _AppCubitLogicsState createState() => _AppCubitLogicsState();
}

class _AppCubitLogicsState extends State<AppCubitLogics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlocBuilder<AppCubits, CubitStates>(builder: (context, state) {
      if (state is DetailState) {
        return DetailPage();
      }
      if (state is WelcomeState) {
        return WelcomPage();
      }
      if (state is LoadedState) {
        return HomePages();
      }
      if (state is LoadingState) {
        return Center(
          child: CircularProgressIndicator(),
        );
      } else {
        return Container();
      }
    }));
  }
}
