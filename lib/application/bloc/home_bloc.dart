import 'package:bloc/bloc.dart';
import 'package:evm/domain/home/value_objects.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeState.initial()) {
    // ignore: void_checks
    on<HomeEvent>((event, emit) async {
      await event.map(usernameChanged: (e) async {
        print('hello');
        print(Username(e.usernameStr));
        emit(state.copyWith(
          username: Username(e.usernameStr),
          showErrorMessages: true
        ));
      });
    });
  }
}
