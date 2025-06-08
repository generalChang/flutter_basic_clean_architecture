import '../error_handling/custom_exception.dart';
import '../error_handling/result.dart';

// ignore: one_member_abstracts
/// T : 모델
/// P : 파라미터
abstract class UseCase<T, P> {
  Future<Result<T, Exception>> call({required P params});

  static Future<Result<T, Exception>> execute<T, P>(
      {required UseCase<T, P> useCase, required P params}) async {
    return await useCase.call(params: params);
  }
}
