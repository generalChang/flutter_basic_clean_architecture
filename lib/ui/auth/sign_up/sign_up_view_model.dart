import 'package:flutter_best_practice/core/status/loading_status.dart';
import 'package:flutter_best_practice/domain/auth/use_case/sign_up_use_case.dart';
import 'package:flutter_best_practice/ui/auth/sign_up/sign_up_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/helper/usecase/use_case.dart';
import '../../../core/helper/usecase/use_case_result.dart';
import '../../../domain/auth/params/sign_up_params.dart';

/*
설명
- MVVM 패턴에서 ViewModel에 해당하는 부분
- 따라서 이벤트 처리 및 State management 책임을 가짐
- 하나의 뷰와 동일한 생명주기를 가지도록 설정


사용법
- Riverpod의 StateNotifier를 extends 해야함
   - view에서 viewmodel을 쉽게 구독하고 모니터링 할 수 있도록 하기 위함
- StateNotifierProvider를 통해 의존성 관리
   - 일반적으로 autoDispose modifier를 사용하여 뷰와 완전히 동일한 생명주기를 갖도록 설정하는 것을 권장
 */

final signUpViewModelProvider =
    StateNotifierProvider.autoDispose<SignUpViewModel, SignUpState>((ref) {
  return SignUpViewModel(signUpUseCase: ref.watch(signUpUseCaseProvider));
});

class SignUpViewModel extends StateNotifier<SignUpState> {
  final UseCase<void, SignUpParams> _signUpUseCase;
  SignUpViewModel({required UseCase<void, SignUpParams> signUpUseCase})
      : _signUpUseCase = signUpUseCase,
        super(SignUpState.init());

  void updateEmail({required String email}) {
    state = state.copyWith(email: email);
  }

  void updatePassword({required String password}) {
    state = state.copyWith(password: password);
  }

  void updateName({required String name}) {
    state = state.copyWith(name: name);
  }

  Future<void> signUp() async {
    state = state.copyWith(signUpLoadingStatus: LoadingStatus.loading);

    // final resp = await _signUpUseCase(
    //     params: SignUpParams(
    //         email: state.email!, password: state.password!, name: state.name!));

    // 네트워크 레이턴시가 2초정도라 가정
    await Future.delayed(Duration(seconds: 2));
    // 서버 요청 후 성공적으로 응답을 받아왔다고 가정
    const resp = SuccessUseCaseResult<void>(data: null);

    switch (resp) {
      case SuccessUseCaseResult<void>():
        state = state.copyWith(signUpLoadingStatus: LoadingStatus.success);
      case FailureUseCaseResult<void>():
        state = state.copyWith(
          signUpLoadingStatus: LoadingStatus.error,
        );
    }
  }
}
