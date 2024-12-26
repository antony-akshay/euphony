part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required Username username,
    required bool showErrorMessages,
    required bool isSubmitting,
  }) = _HomeState;

   factory HomeState.initial() => HomeState(
    username : Username(''),
    showErrorMessages: false,
    isSubmitting: false
  );
}
