# Flutter Clean architecture with riverpod
Flutter 프로젝트에 적용하기 좋은 클린 아키텍처 예제입니다.
이 구조는 제가 Flutter로 모바일 앱을 개발할 때 주로 사용하는 방식이며,
Flutter로 프로젝트를 시작하시는 분들이 바로 활용할 수 있도록 템플릿 레포지토리로 구성했습니다.
많은 개발자분들께 도움이 되었으면 합니다!

## Key Packages
- State Management & DI : [riverpod](https://pub.dev/packages/riverpod)   
- Routing : go_router : [go_router](https://pub.dev/packages/go_router)   
- Http client : [dio](https://pub.dev/packages/dio)   
- Local Database : [hive](https://pub.dev/packages/hive)   
- Data class : [freezed](https://pub.dev/packages/freezed)   

## Folder Structure
```shell
|-- lib
    |-- app
    |   |-- di
    |   |-- entrypoints
    |   |-- router
    |   |-- local
    |
    |-- common
    |   |-- component
    |   |-- style
    |
    |-- core
    |   |-- api_call
    |   |-- error_handling
    |   |-- network
    |   |-- route
    |   |-- status
    |   |-- usecase       
    |        
    |-- data
    |   |-- source
    |   |   |-- remote
    |   |   |-- local
    |   |   |-- mock
    |   |-- repository_impl
    |   |-- mapper
    |   |-- entity
    |   |-- request_body
    |   |-- query_param
    |   
    |-- domain
    |   |-- model
    |   |-- param
    |   |-- repository
    |   |-- usecase
    |
    |-- ui
    |   |-- controller
    |   |-- view
  
```
