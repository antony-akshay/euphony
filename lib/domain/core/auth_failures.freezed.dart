// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() usernameIsAlreadyInUse,
    required TResult Function() usernameIsRequired,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverError,
    TResult? Function()? usernameIsAlreadyInUse,
    TResult? Function()? usernameIsRequired,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? usernameIsAlreadyInUse,
    TResult Function()? usernameIsRequired,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(UsernameIsAlreadyInUse value)
        usernameIsAlreadyInUse,
    required TResult Function(UsernameIsRequired value) usernameIsRequired,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerError value)? serverError,
    TResult? Function(UsernameIsAlreadyInUse value)? usernameIsAlreadyInUse,
    TResult? Function(UsernameIsRequired value)? usernameIsRequired,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(UsernameIsAlreadyInUse value)? usernameIsAlreadyInUse,
    TResult Function(UsernameIsRequired value)? usernameIsRequired,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthFailureCopyWith<$Res> {
  factory $AuthFailureCopyWith(
          AuthFailure value, $Res Function(AuthFailure) then) =
      _$AuthFailureCopyWithImpl<$Res, AuthFailure>;
}

/// @nodoc
class _$AuthFailureCopyWithImpl<$Res, $Val extends AuthFailure>
    implements $AuthFailureCopyWith<$Res> {
  _$AuthFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthFailure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ServerErrorImplCopyWith<$Res> {
  factory _$$ServerErrorImplCopyWith(
          _$ServerErrorImpl value, $Res Function(_$ServerErrorImpl) then) =
      __$$ServerErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ServerErrorImplCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res, _$ServerErrorImpl>
    implements _$$ServerErrorImplCopyWith<$Res> {
  __$$ServerErrorImplCopyWithImpl(
      _$ServerErrorImpl _value, $Res Function(_$ServerErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthFailure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ServerErrorImpl implements ServerError {
  const _$ServerErrorImpl();

  @override
  String toString() {
    return 'AuthFailure.serverError()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ServerErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() usernameIsAlreadyInUse,
    required TResult Function() usernameIsRequired,
  }) {
    return serverError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverError,
    TResult? Function()? usernameIsAlreadyInUse,
    TResult? Function()? usernameIsRequired,
  }) {
    return serverError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? usernameIsAlreadyInUse,
    TResult Function()? usernameIsRequired,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(UsernameIsAlreadyInUse value)
        usernameIsAlreadyInUse,
    required TResult Function(UsernameIsRequired value) usernameIsRequired,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerError value)? serverError,
    TResult? Function(UsernameIsAlreadyInUse value)? usernameIsAlreadyInUse,
    TResult? Function(UsernameIsRequired value)? usernameIsRequired,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(UsernameIsAlreadyInUse value)? usernameIsAlreadyInUse,
    TResult Function(UsernameIsRequired value)? usernameIsRequired,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class ServerError implements AuthFailure {
  const factory ServerError() = _$ServerErrorImpl;
}

/// @nodoc
abstract class _$$UsernameIsAlreadyInUseImplCopyWith<$Res> {
  factory _$$UsernameIsAlreadyInUseImplCopyWith(
          _$UsernameIsAlreadyInUseImpl value,
          $Res Function(_$UsernameIsAlreadyInUseImpl) then) =
      __$$UsernameIsAlreadyInUseImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UsernameIsAlreadyInUseImplCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res, _$UsernameIsAlreadyInUseImpl>
    implements _$$UsernameIsAlreadyInUseImplCopyWith<$Res> {
  __$$UsernameIsAlreadyInUseImplCopyWithImpl(
      _$UsernameIsAlreadyInUseImpl _value,
      $Res Function(_$UsernameIsAlreadyInUseImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthFailure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UsernameIsAlreadyInUseImpl implements UsernameIsAlreadyInUse {
  const _$UsernameIsAlreadyInUseImpl();

  @override
  String toString() {
    return 'AuthFailure.usernameIsAlreadyInUse()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UsernameIsAlreadyInUseImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() usernameIsAlreadyInUse,
    required TResult Function() usernameIsRequired,
  }) {
    return usernameIsAlreadyInUse();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverError,
    TResult? Function()? usernameIsAlreadyInUse,
    TResult? Function()? usernameIsRequired,
  }) {
    return usernameIsAlreadyInUse?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? usernameIsAlreadyInUse,
    TResult Function()? usernameIsRequired,
    required TResult orElse(),
  }) {
    if (usernameIsAlreadyInUse != null) {
      return usernameIsAlreadyInUse();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(UsernameIsAlreadyInUse value)
        usernameIsAlreadyInUse,
    required TResult Function(UsernameIsRequired value) usernameIsRequired,
  }) {
    return usernameIsAlreadyInUse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerError value)? serverError,
    TResult? Function(UsernameIsAlreadyInUse value)? usernameIsAlreadyInUse,
    TResult? Function(UsernameIsRequired value)? usernameIsRequired,
  }) {
    return usernameIsAlreadyInUse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(UsernameIsAlreadyInUse value)? usernameIsAlreadyInUse,
    TResult Function(UsernameIsRequired value)? usernameIsRequired,
    required TResult orElse(),
  }) {
    if (usernameIsAlreadyInUse != null) {
      return usernameIsAlreadyInUse(this);
    }
    return orElse();
  }
}

abstract class UsernameIsAlreadyInUse implements AuthFailure {
  const factory UsernameIsAlreadyInUse() = _$UsernameIsAlreadyInUseImpl;
}

/// @nodoc
abstract class _$$UsernameIsRequiredImplCopyWith<$Res> {
  factory _$$UsernameIsRequiredImplCopyWith(_$UsernameIsRequiredImpl value,
          $Res Function(_$UsernameIsRequiredImpl) then) =
      __$$UsernameIsRequiredImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UsernameIsRequiredImplCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res, _$UsernameIsRequiredImpl>
    implements _$$UsernameIsRequiredImplCopyWith<$Res> {
  __$$UsernameIsRequiredImplCopyWithImpl(_$UsernameIsRequiredImpl _value,
      $Res Function(_$UsernameIsRequiredImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthFailure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UsernameIsRequiredImpl implements UsernameIsRequired {
  const _$UsernameIsRequiredImpl();

  @override
  String toString() {
    return 'AuthFailure.usernameIsRequired()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UsernameIsRequiredImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() usernameIsAlreadyInUse,
    required TResult Function() usernameIsRequired,
  }) {
    return usernameIsRequired();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverError,
    TResult? Function()? usernameIsAlreadyInUse,
    TResult? Function()? usernameIsRequired,
  }) {
    return usernameIsRequired?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? usernameIsAlreadyInUse,
    TResult Function()? usernameIsRequired,
    required TResult orElse(),
  }) {
    if (usernameIsRequired != null) {
      return usernameIsRequired();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(UsernameIsAlreadyInUse value)
        usernameIsAlreadyInUse,
    required TResult Function(UsernameIsRequired value) usernameIsRequired,
  }) {
    return usernameIsRequired(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerError value)? serverError,
    TResult? Function(UsernameIsAlreadyInUse value)? usernameIsAlreadyInUse,
    TResult? Function(UsernameIsRequired value)? usernameIsRequired,
  }) {
    return usernameIsRequired?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(UsernameIsAlreadyInUse value)? usernameIsAlreadyInUse,
    TResult Function(UsernameIsRequired value)? usernameIsRequired,
    required TResult orElse(),
  }) {
    if (usernameIsRequired != null) {
      return usernameIsRequired(this);
    }
    return orElse();
  }
}

abstract class UsernameIsRequired implements AuthFailure {
  const factory UsernameIsRequired() = _$UsernameIsRequiredImpl;
}
