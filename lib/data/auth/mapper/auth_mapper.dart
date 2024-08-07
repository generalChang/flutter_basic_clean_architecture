import 'package:flutter_best_practice/data/auth/entity/sign_in_entity.dart';
import 'package:flutter_best_practice/domain/auth/model/sign_in_model.dart';

/*
설명
- data/entity를 domain/model로 변환하는 책임을 가짐
- 여기선 Authentication과 관련된 entity를 model로 변환하는 책임을 가짐

사용법
- static method를 이용하여 변환로직을 추가
- (더 좋은 방식이 있으면 공유해주세요~)
 */

class AuthMapper {
  static SignInModel toSignInModel({required SignInEntity entity}) {
    return SignInModel(
        accessToken: entity.accessToken, refreshToken: entity.refreshToken);
  }
}
