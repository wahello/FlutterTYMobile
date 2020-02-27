// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_game_event.dart';

// **************************************************************************
// SuperEnumGenerator
// **************************************************************************

@immutable
abstract class HomeGameEvent extends Equatable {
  const HomeGameEvent(this._type);

  factory HomeGameEvent.getGamesEvent({@required PlatformGameForm form}) =
      GetGamesEvent;

  final _HomeGameEvent _type;

//ignore: missing_return
  R when<R>({@required R Function(GetGamesEvent) getGamesEvent}) {
    assert(() {
      if (getGamesEvent == null) {
        throw 'check for all possible cases';
      }
      return true;
    }());
    switch (this._type) {
      case _HomeGameEvent.GetGamesEvent:
        return getGamesEvent(this as GetGamesEvent);
    }
  }

//ignore: missing_return
  Future<R> asyncWhen<R>(
      {@required FutureOr<R> Function(GetGamesEvent) getGamesEvent}) {
    assert(() {
      if (getGamesEvent == null) {
        throw 'check for all possible cases';
      }
      return true;
    }());
    switch (this._type) {
      case _HomeGameEvent.GetGamesEvent:
        return getGamesEvent(this as GetGamesEvent);
    }
  }

  R whenOrElse<R>(
      {R Function(GetGamesEvent) getGamesEvent,
      @required R Function(HomeGameEvent) orElse}) {
    assert(() {
      if (orElse == null) {
        throw 'Missing orElse case';
      }
      return true;
    }());
    switch (this._type) {
      case _HomeGameEvent.GetGamesEvent:
        if (getGamesEvent == null) break;
        return getGamesEvent(this as GetGamesEvent);
    }
    return orElse(this);
  }

  Future<R> asyncWhenOrElse<R>(
      {FutureOr<R> Function(GetGamesEvent) getGamesEvent,
      @required FutureOr<R> Function(HomeGameEvent) orElse}) {
    assert(() {
      if (orElse == null) {
        throw 'Missing orElse case';
      }
      return true;
    }());
    switch (this._type) {
      case _HomeGameEvent.GetGamesEvent:
        if (getGamesEvent == null) break;
        return getGamesEvent(this as GetGamesEvent);
    }
    return orElse(this);
  }

//ignore: missing_return
  Future<void> whenPartial(
      {FutureOr<void> Function(GetGamesEvent) getGamesEvent}) {
    assert(() {
      if (getGamesEvent == null) {
        throw 'provide at least one branch';
      }
      return true;
    }());
    switch (this._type) {
      case _HomeGameEvent.GetGamesEvent:
        if (getGamesEvent == null) break;
        return getGamesEvent(this as GetGamesEvent);
    }
  }

  @override
  List get props => const [];
}

@immutable
class GetGamesEvent extends HomeGameEvent {
  const GetGamesEvent({@required this.form})
      : super(_HomeGameEvent.GetGamesEvent);

  final PlatformGameForm form;

  @override
  String toString() => 'GetGamesEvent(form:${this.form})';
  @override
  List get props => [form];
}
