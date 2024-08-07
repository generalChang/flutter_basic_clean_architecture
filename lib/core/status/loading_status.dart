/*
설명
- 한 화면이 현재 어떻게 동작을 하고 있는지 표현하기 위함
- 화면의 동작은 크게 none, loading(로딩중), success(성공), error(실패)로 분리됨.

사용법
- state class에서 LoadingStatus 속성을 선언하여 사용
 */

enum LoadingStatus {
  none,
  loading,
  success,
  error,
}
