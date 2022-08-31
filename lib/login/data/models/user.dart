
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'userl.g.dart';


@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    required String name,
    required String email,
    required String password,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);

}