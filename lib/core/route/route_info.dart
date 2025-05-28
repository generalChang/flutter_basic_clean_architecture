/// 라우팅 설계 시 필요한 자료구조
/// name : 절대경로 지정
/// path : 상대경로 지정
class RouteInfo {
  final String name;
  final String path;

  const RouteInfo({
    required this.name,
    required this.path,
  });
}
