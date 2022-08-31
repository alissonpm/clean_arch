// ignore: depend_on_referenced_packages
import 'package:dartz/dartz.dart';
import 'package:prj_flutter_clean_mentoria/login/data/data_sources/remote/user_login.dart';
import '../../../domain/entities/user.dart';
import '../../../domain/errors/errors.dart';
import '../../../domain/repositories/user_login.dart';


class LoginRepositoryImpl implements LoginRepository {
  final LoginDataSource dataSource;

  LoginRepositoryImpl(this.dataSource);

  @override
  Future<Either<Failure, UserEntity>> loginEmail(
      {required String email, required String password}) async {
    try {
      var user = await dataSource.loginEmail(email: email, password: password);
      return Right(user);
    } catch (e) {
      return Left(ErrorLoginEmail(message: "Error login with Email"));
    }
  }
}