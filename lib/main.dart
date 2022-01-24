import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/modules/SplashScreen/splash_screen.dart';
import 'package:device_preview/device_preview.dart';
import 'package:untitled/shared/bloc/app_cubit.dart';


void main() {
  runApp(DevicePreview(
    enabled: !kReleaseMode,
    builder: (context)=>const MyApp(),
    ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
   return MultiBlocProvider(
       providers: [
         BlocProvider(create: (context)=>AppCubit())
       ],
       child:const MaterialApp(
           debugShowCheckedModeBanner: false,
           home: SplashScreen(),
   )
   );
  }
}

