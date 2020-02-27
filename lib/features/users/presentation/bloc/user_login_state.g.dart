// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_login_state.dart';

// **************************************************************************
// SuperEnumGenerator
// **************************************************************************

@immutable
abstract class UserLoginState extends Equatable {
  const UserLoginState(this._type);

  factory UserLoginState.uInitial() = UInitial;

  factory UserLoginState.uLoading() = ULoading;

  factory UserLoginState.uLoaded({@required UserEntity user}) = ULoaded;

  factory UserLoginState.uError({@required String message}) = UError;

  final _UserLoginState _type;

//ignore: missing_return
  R when<R>(
      {@required R Function(UInitial) uInitial,
      @required R Function(ULoading) uLoading,
      @required R Function(ULoaded) uLoaded,
      @required R Function(UError) uError}) {
    assert(() {
      if (uInitial == null ||
          uLoading == null ||
          uLoaded == null ||
          uError == null) {
        throw 'check for all possible cases';
      }
      return true;
    }());
    switch (this._type) {
      case _UserLoginState.UInitial:
        return uInitial(this as UInitial);
      case _UserLoginState.ULoading:
        return uLoading(this as ULoading);
      case _UserLoginState.ULoaded:
        return uLoaded(this as ULoaded);
      case _UserLoginState.UError:
        return uError(this as UError);
    }
  }

//ignore: missing_return
  Future<R> asyncWhen<R>(
      {@required FutureOr<R> Function(UInitial) uInitial,
      @required FutureOr<R> Function(ULoading) uLoading,
      @required FutureOr<R> Function(ULoaded) uLoaded,
      @required FutureOr<R> Function(UError) uError}) {
    assert(() {
      if (uInitial == null ||
          uLoading == null ||
          uLoaded == null ||
          uError == null) {
        throw 'check for all possible cases';
      }
      return true;
    }());
    switch (this._type) {
      case _UserLoginState.UInitial:
        return uInitial(this as UInitial);
      case _UserLoginState.ULoading:
        return uLoading(this as ULoading);
      case _UserLoginState.ULoaded:
        return uLoaded(this as ULoaded);
      case _UserLoginState.UError:
        return uError(this as UError);
    }
  }

  R whenOrElse<R>(
      {R Function(UInitial) uInitial,
      R Function(ULoading) uLoading,
      R Function(ULoaded) uLoaded,
      R Function(UError) uError,
      @required R Function(UserLoginState) orElse}) {
    assert(() {
      if (orElse == null) {
        throw 'Missing orElse case';
      }
      return true;
    }());
    switch (this._type) {
      case _UserLoginState.UInitial:
        if (uInitial == null) break;
        return uInitial(this as UInitial);
      case _UserLoginState.ULoading:
        if (uLoading == null) break;
        return uLoading(this as ULoading);
      case _UserLoginState.ULoaded:
        if (uLoaded == null) break;
        return uLoaded(this as ULoaded);
      case _UserLoginState.UError:
        if (uError == null) break;
        return uError(this as UError);
    }
    return orElse(this);
  }

  Future<R> asyncWhenOrElse<R>(
      {FutureOr<R> Function(UInitial) uInitial,
      FutureOr<R> Function(ULoading) uLoading,
      FutureOr<R> Function(ULoaded) uLoaded,
      FutureOr<R> Function(UError) uError,
      @required FutureOr<R> Function(UserLoginState) orElse}) {
    assert(() {
      if (orElse == null) {
        throw 'Missing orElse case';
      }
      return true;
    }());
    switch (this._type) {
      case _UserLoginState.UInitial:
        if (uInitial == null) break;
        return uInitial(this as UInitial);
      case _UserLoginState.ULoading:
        if (uLoading == null) break;
        return uLoading(this as ULoading);
      case _UserLoginState.ULoaded:
        if (uLoaded == null) break;
        return uLoaded(this as ULoaded);
      case _UserLoginState.UError:
        if (uError == null) break;
        return uError(this as UError);
    }
    return orElse(this);
  }

//ignore: missing_return
  Future<void> whenPartial(
      {FutureOr<void> Function(UInitial) uInitial,
      FutureOr<void> Function(ULoading) uLoading,
      FutureOr<void> Function(ULoaded) uLoaded,
      FutureOr<void> Function(UError) uError}) {
    assert(() {
      if (uInitial == null &&
          uLoading == null &&
          uLoaded == null &&
          uError == null) {
        throw 'provide at least one branch';
      }
      return true;
    }());
    switch (this._type) {
      case _UserLoginState.UInitial:
        if (uInitial == null) break;
        return uInitial(this as UInitial);
      case _UserLoginState.ULoading:
        if (uLoading == null) break;
        return uLoading(this as ULoading);
      case _UserLoginState.ULoaded:
        if (uLoaded == null) break;
        return uLoaded(this as ULoaded);
      case _UserLoginState.UError:
        if (uError == null) break;
        return uError(this as UError);
    }
  }

  @override
  List get props => const [];
}

@immutable
class UInitial extends UserLoginState {
  const UInitial._() : super(_UserLoginState.UInitial);

  factory UInitial() {
    _instance ??= const UInitial._();
    return _instance;
  }

  static UInitial _instance;
}

@immutable
class ULoading extends UserLoginState {
  const ULoading._() : super(_UserLoginState.ULoading);

  factory ULoading() {
    _instance ??= const ULoading._();
    return _instance;
  }

  static ULoading _instance;
}

@immutable
class ULoaded extends UserLoginState {
  const ULoaded({@required this.user}) : super(_UserLoginState.ULoaded);

  final UserEntity user;

  @override
  String toString() => 'ULoaded(user:${this.user})';
  @override
  List get props => [user];
}

@immutable
class UError extends UserLoginState {
  const UError({@required this.message}) : super(_UserLoginState.UError);

  final String message;

  @override
  String toString() => 'UError(message:${this.message})';
  @override
  List get props => [message];
}
