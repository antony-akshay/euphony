import 'package:evm/application/bloc/home_bloc.dart';
import 'package:evm/presentation/chat/chathome.dart';
import 'package:evm/presentation/chat/chatting.dart';
import 'package:evm/presentation/chat/imageUpload.dart';
import 'package:evm/presentation/chat/uploadPreview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      builder: (context, child) {
        return BlocProvider(
          create: (context) => HomeBloc(),
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            home: chattingScreen()
          ),
        );
      },
    );
  }
}
