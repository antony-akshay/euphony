part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  // const factory HomeEvent.started() = _Started;
  const factory HomeEvent.usernameChanged(String usernameStr) =
      _UsernameChanged;
  const factory HomeEvent.usernameSubmit(String usernameStr,String authkey) = _UsernameSubmit;
  const factory HomeEvent.isusernamePresent() = _IsUsernamePresent;
}
