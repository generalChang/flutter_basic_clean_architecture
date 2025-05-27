sealed class Result<T, E extends Exception> {
  const Result();
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
