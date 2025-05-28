/// 비동기 데이터 호출 상테
enum Status {
  none,
  loading,
  success,
  error,
}

extension StatusExt on Status {
  bool get isInitial => this == Status.none;
  bool get isLoading => this == Status.loading;
  bool get isSuccess => this == Status.success;
  bool get isError => this == Status.error;
}
