import 'package:bloc/bloc.dart';
import 'package:flutter_ty_mobile/core/base/usecase_export.dart';
import 'package:flutter_ty_mobile/core/network/handler/request_status_freezed.dart' show RequestStatusModel;
import 'package:meta/meta.dart' show required;
import 'package:super_enum/super_enum.dart';

import '../usecase/get_user.dart';
import 'user_login_event.dart';
import 'user_login_state.dart';

class UserLoginBloc extends Bloc<UserLoginEvent, UserLoginState> {
  final GetUserData getUserData;
  final tag = 'UserLoginBloc';

  UserLoginBloc({
    @required GetUserData userData,
  })  : assert(userData != null),
        getUserData = userData;

  @override
  UserLoginState get initialState => UserLoginState.uInitial();

  @override
  void onTransition(Transition<UserLoginEvent, UserLoginState> transition) {
//    print('marquee state, current: ${transition.currentState}');
    print('user state, next: ${transition.nextState}');
    super.onTransition(transition);
  }

  @override
  Stream<UserLoginState> mapEventToState(
    UserLoginEvent event,
  ) async* {
    MyLogger.print(msg: 'mapEventToState: $event', tag: tag);
    if (event is GetUserEvent) {
      yield UserLoginState.uLoading();
    }
    // action on different event
    yield* await event.when(
      getUserEvent: (event) => streamUserDataState(event),
    );
  }

  /// Get user data from repository through [GetUserData]
  Stream<UserLoginState> streamUserDataState(GetUserEvent event) async* {
    final failureOrData = await getUserData(DataParams(event.form));
    yield failureOrData.fold(
      (failure) {
        var message = '';
        if (failure.props.isNotEmpty) {
          var failureData = failure.props.first;
          // show the message from the model
          if (failureData is RequestStatusModel) message = failureData.msg;
        }
        // else show failure's message
        if (message.isEmpty) message = failure.message;
        return UserLoginState.uError(message: message);
      },
      (data) => UserLoginState.uLoaded(user: data),
    );
  }
}
