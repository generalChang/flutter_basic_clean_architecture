import 'package:flutter_best_practice/data/auth/entity/sign_in_entity.dart';
import 'package:flutter_best_practice/domain/auth/model/sign_in_model.dart';

class AuthMapper {
  static SignInModel toSignInModel({required SignInEntity entity}) {
    return SignInModel(
        accessToken: entity.accessToken, refreshToken: entity.refreshToken);
  }
}
