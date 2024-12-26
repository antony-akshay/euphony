import 'package:evm/presentation/home/isusername.dart';
import 'package:flutter/material.dart';

@immutable
class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  final bool val = true;

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      const bool val = true;
      if (val) {
        HomeWidgets.usernamemodule(context);
      }
    });
    
    return Scaffold(
      body: SafeArea(
        child: Center(child: Text('home')),
      ),
    );
  }
}
