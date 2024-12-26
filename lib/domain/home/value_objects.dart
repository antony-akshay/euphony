import 'package:dartz/dartz.dart';
import 'package:evm/domain/core/failures.dart';
import 'package:evm/domain/core/value_objects.dart';
import 'package:evm/domain/home/value_validators.dart';

class Username extends ValueObjects<String>{

  @override
  final Either<ValueFailure<String>, String> value;

  
  factory Username(String input) {
    // ignore: unnecessary_null_comparison
    assert(input != null);
    return Username._(value:validateUsername(input));
  }

  const Username._({required this.value});
}
