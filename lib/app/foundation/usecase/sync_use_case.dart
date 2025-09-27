
/// 동기적 Usecase interface
/// T : 모델
/// P : 파라미터
abstract interface class SyncUseCase<T, P> {
  T call({required P params});
}
