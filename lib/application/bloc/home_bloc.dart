import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:evm/domain/core/auth_failures.dart';
import 'package:evm/domain/home/value_objects.dart';
import 'package:evm/infrastructure/username.dart';
import 'package:evm/infrastructure/usernameapi.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeState.initial()) {
    // ignore: void_checks
    on<HomeEvent>((event, emit) async {
      Either<AuthFailure, Unit>? failureOrSuccess;
      final I_Usernameapi _usernameApi = UsernameAPI();

      await event.map(usernameChanged: (e) async {
        print('hello');
        print(Username(e.usernameStr));
        emit(state.copyWith(
            username: Username(e.usernameStr), showErrorMessages: true));
      }, usernameSubmit: (_UsernameSubmit value) async {
        emit(
          state.copyWith(isSubmitting: true, showErrorMessages: false),
        );
        failureOrSuccess =
            await _usernameApi.submitUsername(userName: event.usernameStr);
        emit(state.copyWith(isSubmitting: false,
                            authFailureOrSuccessOption: optionOf(failureOrSuccess)));
      });
    });
  }
}
