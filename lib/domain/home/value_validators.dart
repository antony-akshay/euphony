import 'package:dartz/dartz.dart';
import 'package:evm/domain/core/failures.dart';

Either<ValueFailure<String>, String> validateUsername(String input) {
  final usernameRegex = RegExp(r'^[a-z]+$');
  print('valuevalidator');
  if (usernameRegex.hasMatch(input)) {
    print('ok');
    return right(input);
  } else {
    print('no ok');
    return left(ValueFailure.notLowerCase(failedValue: input));
  }
}
