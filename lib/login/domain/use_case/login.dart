import 'package:dartz/dartz.dart';

import 'package:prj_flutter_clean_mentoria/login/domain/entities/user.dart';

import '../entities/credential.dart';
import '../errors/errors.dart';
import '../repositories/user_login.dart';


abstract class LoginWithEmail {
  Future<Either<Failure, UserEntity>> call(LoginCredential credential);
}


class LoginWithEmailImpl implements LoginWithEmail {
  final LoginRepository repository;

  LoginWithEmailImpl(this.repository);

  @override
  Future<Either<Failure, UserEntity>> call(
      LoginCredential credential) async {
  
    if (!credential.isValidEmail) {
      return Left(ErrorLoginEmail(message: "Invalid Email"));
    } 

    return await repository.loginEmail(
      email: credential.email,
      password: credential.password,
    );
  }
}