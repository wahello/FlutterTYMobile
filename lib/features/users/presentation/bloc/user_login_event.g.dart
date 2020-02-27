// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_login_event.dart';

// **************************************************************************
// SuperEnumGenerator
// **************************************************************************

@immutable
abstract class UserLoginEvent extends Equatable {
  const UserLoginEvent(this._type);

  factory UserLoginEvent.getUserEvent({@required UserLoginForm form}) =
      GetUserEvent;

  final _UserLoginEvent _type;

//ignore: missing_return
  R when<R>({@required R Function(GetUserEvent) getUserEvent}) {
    assert(() {
      if (getUserEvent == null) {
        throw 'check for all possible cases';
      }
      return true;
    }());
    switch (this._type) {
      case _UserLoginEvent.GetUserEvent:
        return getUserEvent(this as GetUserEvent);
    }
  }

//ignore: missing_return
  Future<R> asyncWhen<R>(
      {@required FutureOr<R> Function(GetUserEvent) getUserEvent}) {
    assert(() {
      if (getUserEvent == null) {
        throw 'check for all possible cases';
      }
      return true;
    }());
    switch (this._type) {
      case _UserLoginEvent.GetUserEvent:
        return getUserEvent(this as GetUserEvent);
    }
  }

  R whenOrElse<R>(
      {R Function(GetUserEvent) getUserEvent,
      @required R Function(UserLoginEvent) orElse}) {
    assert(() {
      if (orElse == null) {
        throw 'Missing orElse case';
      }
      return true;
    }());
    switch (this._type) {
      case _UserLoginEvent.GetUserEvent:
        if (getUserEvent == null) break;
        return getUserEvent(this as GetUserEvent);
    }
    return orElse(this);
  }

  Future<R> asyncWhenOrElse<R>(
      {FutureOr<R> Function(GetUserEvent) getUserEvent,
      @required FutureOr<R> Function(UserLoginEvent) orElse}) {
    assert(() {
      if (orElse == null) {
        throw 'Missing orElse case';
      }
      return true;
    }());
    switch (this._type) {
      case _UserLoginEvent.GetUserEvent:
        if (getUserEvent == null) break;
        return getUserEvent(this as GetUserEvent);
    }
    return orElse(this);
  }

//ignore: missing_return
  Future<void> whenPartial(
      {FutureOr<void> Function(GetUserEvent) getUserEvent}) {
    assert(() {
      if (getUserEvent == null) {
        throw 'provide at least one branch';
      }
      return true;
    }());
    switch (this._type) {
      case _UserLoginEvent.GetUserEvent:
        if (getUserEvent == null) break;
        return getUserEvent(this as GetUserEvent);
    }
  }

  @override
  List get props => const [];
}

@immutable
class GetUserEvent extends UserLoginEvent {
  const GetUserEvent({@required this.form})
      : super(_UserLoginEvent.GetUserEvent);

  final UserLoginForm form;

  @override
  String toString() => 'GetUserEvent(form:${this.form})';
  @override
  List get props => [form];
}
