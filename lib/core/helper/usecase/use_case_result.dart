
/*
설명
- 성공 및 실패 케이스를 표현하기 위한 확장형 구조

사용법
- sealed class를 사용하여 base use case result를 구성
- sealed class 사용 이유 :  더 안전하고 정확한 패턴매칭을 사용하기 위함
 */
sealed class UseCaseResult<T> {
  const UseCaseResult();
}

class SuccessUseCaseResult<T> extends UseCaseResult<T> {
  const SuccessUseCaseResult({required this.data});

  final T data;
}

class FailureUseCaseResult<T> extends UseCaseResult<T> {
  const FailureUseCaseResult({
    this.error,
    this.message,
  });

  final Object? error;
  final String? message;
}
