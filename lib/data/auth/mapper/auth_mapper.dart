import 'package:flutter_best_practice/data/auth/entity/sign_in_entity.dart';
import 'package:flutter_best_practice/domain/auth/model/sign_in_model.dart';

// Authentication과 관련된 Entity를 Model로 변환해주는 책임을 가짐
// static method를 이용하여 각각의 변환로직을 추가하였음
// (더 좋은 방식이 있으면 공유해주세요~)
class AuthMapper {
  static SignInModel toSignInModel({required SignInEntity entity}) {
    return SignInModel(
        accessToken: entity.accessToken, refreshToken: entity.refreshToken);
  }
}
