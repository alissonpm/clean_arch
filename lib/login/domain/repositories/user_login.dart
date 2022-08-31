
// ignore: depend_on_referenced_packages
import 'package:dartz/dartz.dart';
import 'package:prj_flutter_clean_mentoria/login/domain/errors/errors.dart';

import '../entities/user.dart';

abstract class LoginRepository {
  Future<Either<Failure, UserEntity>> loginEmail(
      {required String email, required String password});
}