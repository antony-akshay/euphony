import 'package:dartz/dartz.dart';
import 'package:evm/domain/core/auth_failures.dart';

abstract class I_Usernameapi {
  Future<Either<AuthFailure, Unit>> submitUsername({required String userName});
}
