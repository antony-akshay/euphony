// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:evm/presentation/home/isusername.dart';
import 'package:flutter/material.dart';

@immutable
class Homescreen extends StatelessWidget {
  final String username;
  final String authkey;
  const Homescreen({
    super.key,
    required this.username,
    required this.authkey,
  });

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
            if (username.isEmpty) {
        HomeWidgets.usernamemodule(context,authkey);
      }
    });

    //context.read<HomeBloc>().add(HomeEvent.usernameSubmit(auth));

    return Scaffold(
      body: SafeArea(
        child: Center(child: Text('home')),
      ),
    );
  }
}
