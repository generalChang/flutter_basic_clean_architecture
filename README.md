# Flutter Clean architecture with riverpod
Flutter 프로젝트에 적용하기 좋은 클린 아키텍처 예제입니다.
이 구조는 제가 Flutter로 모바일 앱을 개발할 때 주로 사용하는 방식이며,
Flutter로 프로젝트를 시작하시는 분들이 바로 활용할 수 있도록 템플릿 레포지토리로 구성했습니다.
많은 개발자분들께 도움이 되었으면 합니다!

## 🔑 Key Packages


### 상태관리 & 의존성 주입
- `riverpod` - 선언적 상태 관리
- `flutter_riverpod` - Flutter integration
- `riverpod_annotation` - Provider(Riverpod) 코드 생성 지원

### 라우팅
- `go_router` - 선언적 라우팅

### 네트워킹
- `dio` - HTTP 클라이언트
- `retrofit` - RESTful API 클라이언트 생성

### 로컬 데이터베이스
- `hive` - 경량 NoSQL 데이터베이스
- `hive_flutter` - Flutter integration

### 데이터 클래스
- `freezed` - 불변 데이터 클래스
- `json_annotation` - JSON 직렬화
- `json_serializable` - JSON 코드 생성

### 보안, 인증, 권한
- `flutter_secure_storage` - 암호화된 저장소
- `envied` - 환경변수 관리 (컴파일 타임 보안)

### 채팅
- `socket_io_client` - 실시간 통신




## 🧱 Architecture Pattern


### 3-Layered Architecture
- Presentation Layer (UI) : 화면 구성 및 사용자 상호작용 처리
- Domain Layer : 비즈니스 로직 및 핵심 모델, 유즈케이스 정의
- Data Layer : 외부 데이터 소스와 통신, 통신에 따른 에러 핸들링, Domain Layer의 Data Model로 변환
- 계층간 의존성 방향 : ```Presentation (UI) -> Domain <- Data```

### Repository Pattern
- 데이터 접근 로직을 추상화합니다.
- Domain layer에 추상화된 인터페이스가 정의되어 있으며, 
실제 구현체는 Data layer에 위치하게 됩니다.
- Repository 구현체는 내부적으로 Data layer의 데이터 소스를 호출합니다.

### Layer-first Pattern
- 기능 단위보다 계층(Layer)별 책임을 기준으로 프로젝트 폴더 구조를 설계
- Layer-first 구조를 기반으로 다음과 같은 단계별 분리 전략을 따르게 됩니다.
```shell
[1단계. Layer 단위로 분리]
- 레이어 (UI / Domain / Data) 기준으로 상위 디렉토리 구성

[2단계. 각 레이어 내 컴포넌트 기준으로 분리]
- 각 레이어 내부에서 역할에 따라 하위 디렉토리 분리
- Presentation -> view, viewmodel(controller), state
- Domain -> usecase, repository, model
- data -> repository implementation, data source, entity

[3단계. Feature 기준으로 분리]
- 2단계에서 만든 디렉토리 내부에서 Feature에 따라 하위 디렉토리로 분리
```
## 📁 Folder Structure
```

shell
lib
│
├── app                   # 앱 실행 관련
│   ├── entrypoint        # 앱 시작점
│   ├── environment       # 앱 환경 설정을 위한 핵심 구성
│   ├── error             # 공통 에러 핸들링
│   ├── router            # 앱 라우팅
│   ├── ui                # 스타일, 공통 위젯, UI 컴포넌트
│   ├── util              # 간단한 순수 유틸
│   ├── service           # 플러그인/SDK/플랫폼 의존 유틸
│   └── foundation        # 앱 전반에 공유되는 기반 코드
│       ├── usecase       # BaseUseCase 인터페이스
│       ├── status        # Status enum
│       ├── constant      # SecureStorage key, API 상수 등
│       └── route         # 앱 라우팅 관련 모델
│
├── domain                # domain layer
│   ├── model             # 도메인 객체
│   ├── param             # 유스케이스 파라미터 객체
│   ├── repository        # Repository 인터페이스
│   └── usecase           # 비즈니스 유스케이스 (ex: GetUserUseCase)
│
├── data                  # data layer
│   ├── source
│   │   ├── remote        # API 호출
│   │   ├── local         # Local Database 호출
│   │   └── mock          # 테스트용 mock
│   ├── repository_impl   # Repository 구현체
│   ├── entity            # API Response DTO
│   ├── mapper            # Entity ↔ Model 변환
│   ├── request_body      # API Request DTO
│   └── query_param       # API Query 파라미터
│
└── ui                    # presentation layer
    ├── controller        # 전역 상태 관리
    └── view              # 위젯, 화면

```
