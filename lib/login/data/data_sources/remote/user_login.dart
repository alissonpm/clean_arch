import 'dart:async';

import 'package:prj_flutter_clean_mentoria/login/domain/entities/user.dart';


abstract class LoginDataSource {
  Future<UserEntity> loginEmail({String email, String password});
}
