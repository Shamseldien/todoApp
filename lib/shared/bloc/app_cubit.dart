import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/modules/Profile/profile_screen.dart';
import 'package:untitled/modules/Tasks/tasks_screen.dart';
import 'package:untitled/modules/home/home_screen.dart';
import 'package:untitled/shared/bloc/app_states.dart';
import 'package:untitled/shared/style/colors.dart';

class AppCubit extends Cubit<AppStates>{
  AppCubit() : super(AppInitState());

  static AppCubit get(context)=>BlocProvider.of(context);

  int currentIndex=0;

  List screens =[
    HomeScreen(),
    TasksScreen(),
    const Center(child: Text('add')),
    const Center(child: Text('graph')),
    ProfileScreen(),
  ];
  void changeCurrentIndex({@required index}){
    currentIndex = index;
    emit(ChangeCurrentIndexState());
  }

}