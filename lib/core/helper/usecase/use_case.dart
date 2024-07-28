import 'use_case_result.dart';

// ignore: one_member_abstracts
abstract class UseCase<T, P> {
  Future<UseCaseResult<T>> call({required P params});
}
