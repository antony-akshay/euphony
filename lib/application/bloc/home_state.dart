part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required bool showErrorMessages,
    required bool isSubmitting,
    required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
    required bool isusernamepresent

  }) = _HomeState;

   factory HomeState.initial() => HomeState(
    showErrorMessages: false,
    isSubmitting: false,
    authFailureOrSuccessOption: none(),
    isusernamepresent: false
  );
}
