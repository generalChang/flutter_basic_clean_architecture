/*
설명
- 성공 및 실패 케이스를 표현하기 위한 확장형 구조

사용법
- sealed class를 사용하여 base repository result를 구성
- sealed class 사용 이유 :  더 안전하고 정확한 패턴매칭을 사용하기 위함
 */

sealed class RepositoryResult<T> {
  const RepositoryResult();
}

class SuccessRepositoryResult<T> extends RepositoryResult<T> {
  const SuccessRepositoryResult({required this.data});

  final T data;
}

class FailureRepositoryResult<T> extends RepositoryResult<T> {
  const FailureRepositoryResult({
    this.error,
    this.messages,
  });

  final Object? error;
  final List<String>? messages;
}
