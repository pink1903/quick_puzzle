import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../utilities/mem_cache.dart';
import '../utilities/network/http_error_code_utility.dart';
import 'main_frame_state.dart';

abstract class BaseCubit<S> extends Cubit<S> {
  final StreamController<bool> _loadingController =
  StreamController<bool>.broadcast();
  StreamSink<bool> get loadingSink => _loadingController.sink;
  Stream<bool> get loadingStream => _loadingController.stream;

  final StreamController<String> _errorController =
  StreamController<String>.broadcast();
  StreamSink<String> get errorSink => _errorController.sink;
  Stream<String> get errorStream => _errorController.stream;

  BaseCubit(S state) : super(state);

  void initState() {}

  void didChangeDependencies() {}

  void onResume() {}

  void onPause() {}

  void onDetach() {}

  void onInactive() {}

  @mustCallSuper
  @override
  Future<void> close() async {
    // TODO: implement close
    await _loadingController.close();
    await _errorController.close();
    await super.close();
  }
}


class AMSFrameCubit extends BaseCubit<AMSFrameState> {
  AMSFrameCubit() : super(const AMSFrameState.initial());
  // final AuthBusiness _authBusiness;

  // Future<void> getUserInfo() async {
  //   final userResult = await _authBusiness.getUserInfo();
  //   if (userResult.isSuccess) {
  //     MemCache.userName = userResult.data?.username ?? '';
  //     MemCache.fullName = userResult.data?.fullName ?? '';
  //     MemCache.email = userResult.data?.email ?? '';
  //     MemCache.userRoles =
  //         userResult.data?.role?.map((role) => role.name).join(',') ?? '';
  //     MemCache.permissions = userResult.data?.role
  //             ?.map((role) => role.permissions
  //                 ?.map((permission) => permission.name)
  //                 .join(','))
  //             .join('|') ??
  //         '';
  //     emit(AMSFrameState.loaded(profile: userResult.data));
  //   } else {
  //     final errorCode =
  //         HttpErrorCodeUtility.verifyBusinessStatusCode(userResult);
  //     final errorMessage =
  //         HttpErrorCodeUtility.handleErrorMessage(userResult.errorMessage);
  //     emit(AMSFrameState.failure(
  //       errorCode: errorCode,
  //       errorMessage: errorMessage,
  //     ));
  //   }
  // }
}
