import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import 'package:evm/domain/core/auth_failures.dart';
import 'package:evm/infrastructure/usernameapi.dart';




class UsernameAPI implements I_Usernameapi {
  @override
  Future<Either<AuthFailure, Unit>> submitUsername(
      {required String userName,required String authkey}) async {

        String url =
    'http://localhost/events/customer/username?auth_key=$authkey';
    try {
      var data = json.encode({"username": userName});
      var dio = Dio();
      var response = await dio.request(
        url,
        options: Options(
          method: 'POST',
        ),
        data: data,
      );

      if (response.statusCode == 400) {
        return left(AuthFailure.serverError());
      }
      return right(unit);
    } on DioException catch (e) {
      if (e.type == DioExceptionType.unknown) {
        return left(AuthFailure.usernameIsAlreadyInUse());
      } else {
        return right(unit);
      }
    }
  }

  Future<Either<AuthFailure, Unit>> isusernamePresent(
      {required String authkey}) async {
    String url =
        'http://localhost/events/customer/username?auth_key=PZDXPx_r9v7w79tLBlwFCxUqUqRQVf8H';

    var data = json.encode({"auth_key": authkey});
    var dio = Dio();
    var response = await dio.request(
      url,
      options: Options(
        method: 'POST',
      ),
      data: data,
    );
    if (response.statusCode == 200) {
        // Parse JSON response
        final responseBody = response.data;
        if (responseBody['message'] == 'Username is required.') {
          return left(AuthFailure.usernameIsRequired());
        }
        return right(unit);
      } else {
        return left(AuthFailure.serverError());
      }
  }
}
