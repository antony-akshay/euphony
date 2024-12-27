import 'package:dartz/dartz.dart';
import 'package:evm/application/bloc/home_bloc.dart';
import 'package:evm/presentation/home/isusername.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@immutable
class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  final String auth = '';

  @override
  Widget build(BuildContext context) {
    // WidgetsBinding.instance.addPostFrameCallback((_) {
    //   const bool val = true;
    //   if (val) {
    //     HomeWidgets.usernamemodule(context);
    //   }
    // });

    context.read<HomeBloc>().add(HomeEvent.usernameSubmit(auth));

    return BlocConsumer<HomeBloc, HomeState>(
      listener: (context, state) {
        state.isusernamepresent ? HomeWidgets.usernamemodule(context) : unit;
      },
      builder: (context, state) {
        return Scaffold(
          body: SafeArea(
            child: Center(child: Text('home')),
          ),
        );
      },
    );
  }
}
