import 'package:flutter_best_practice/data/entity/auth/sign_in_entity.dart';
import 'package:flutter_best_practice/domain/model/auth/sign_in_model.dart';

extension SignInEntityExt on SignInEntity {
  SignInModel toModel() =>
      SignInModel(accessToken: accessToken, refreshToken: refreshToken);
}
