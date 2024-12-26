import 'package:dartz/dartz.dart';
import 'package:evm/domain/core/failures.dart';
import 'package:flutter/material.dart';

@immutable

abstract class ValueObjects<T> {
  const ValueObjects();

  Either<ValueFailure<T>, T> get value;

  // factory EmailAddress(String input) {
  //   assert(input != null);
  //   return EmailAddress._(validateEmailAddress(input));
  // }

  //throws [UnexpectedValueError] containing the [ValueFailure]
  // T getOrCrash() {
  //   return value.fold(
  //     // id = identity - same as writing (right) => right
  //       (f) => throw UnexpectedValueError(valueFailure: f), id);
  // } 

  // bool isvalid() => value.isRight();

  // @override
  // bool operator ==(covariant EmailAddress other) {
  //   if (identical(this, other)) return true;

  //   return other is ValueObjects<T> && other.value == value;
  // }

  // @override
  // int get hashCode => value.hashCode;

  // @override
  // String toString() => 'EmailAddress(value: $value)';
}
