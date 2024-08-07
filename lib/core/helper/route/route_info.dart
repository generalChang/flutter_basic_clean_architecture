/*
설명
- 페이지의 라우트 정보를 관리하는 클래스

사용법
- RouteInfo의 name, path를 GoRoute의 name, path 속성에 할당
 */

class RouteInfo {
  // router에 등록한 페이지의 식별자로, 페이지의 full path string이 됨
  final String name;

  // router에 등록한 페이지의 path로, 페이지의 sub path가 됨.
  final String path;

  const RouteInfo({
    required this.name,
    required this.path,
  });
}
