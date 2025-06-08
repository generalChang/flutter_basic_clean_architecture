import 'package:flutter_best_practice/core/error_handling/custom_exception.dart';

/// Result 패턴
sealed class Result<T, E extends Exception> {
  const Result();

  R map<R>({
    required R Function(Success<T, E> success) onSuccess,
    required R Function(Failure<T, E> failure) onFailure,
  }) {
    if (this is Success) {
      return onSuccess(this as Success<T, E>);
    }

    return onFailure(this as Failure<T, E>);
  }
}

class Success<T, E extends Exception> extends Result<T, E> {
  final T data;

  const Success({
    required this.data,
  });
}

class Failure<T, E extends Exception> extends Result<T, E> {
  final E exception;

  const Failure({
    required this.exception,
  });
}
