import 'use_case_result.dart';

/*
설명
- 앱 내 usecase를 공통적으로 추상화 시키기 위한 구조
- 제네릭의 첫번째 요소는 usecase의 반환타입을, 두번째 요소는 usecase의 파라미터 타입을 의미함

사용법
- ~~UseCase에서 implements 하여 오버라이딩
 */

// ignore: one_member_abstracts
abstract class UseCase<T, P> {
  Future<UseCaseResult<T>> call({required P params});
}
