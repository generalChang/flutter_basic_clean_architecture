import 'package:flutter_best_practice/app/error/result.dart';

abstract class StreamUseCase<T, P> {
  Stream<Result<T, Exception>> call({required P params});

  static Stream<Result<T, Exception>> execute<T, P>(
      {required StreamUseCase<T, P> useCase, required P params}) async* {
    yield* useCase.call(params: params);
  }
}
