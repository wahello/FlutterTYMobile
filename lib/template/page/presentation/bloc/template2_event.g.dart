// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'template2_event.dart';

// **************************************************************************
// SuperEnumGenerator
// **************************************************************************

@immutable
abstract class Template2Event extends Equatable {
  const Template2Event(this._type);

  factory Template2Event.getDescEvent() = GetDescEvent;

  factory Template2Event.getDescEvent2({@required String data}) = GetDescEvent2;

  final _Template2Event _type;

//ignore: missing_return
  R when<R>(
      {@required R Function(GetDescEvent) getDescEvent,
      @required R Function(GetDescEvent2) getDescEvent2}) {
    assert(() {
      if (getDescEvent == null || getDescEvent2 == null) {
        throw 'check for all possible cases';
      }
      return true;
    }());
    switch (this._type) {
      case _Template2Event.GetDescEvent:
        return getDescEvent(this as GetDescEvent);
      case _Template2Event.GetDescEvent2:
        return getDescEvent2(this as GetDescEvent2);
    }
  }

//ignore: missing_return
  Future<R> asyncWhen<R>(
      {@required FutureOr<R> Function(GetDescEvent) getDescEvent,
      @required FutureOr<R> Function(GetDescEvent2) getDescEvent2}) {
    assert(() {
      if (getDescEvent == null || getDescEvent2 == null) {
        throw 'check for all possible cases';
      }
      return true;
    }());
    switch (this._type) {
      case _Template2Event.GetDescEvent:
        return getDescEvent(this as GetDescEvent);
      case _Template2Event.GetDescEvent2:
        return getDescEvent2(this as GetDescEvent2);
    }
  }

  R whenOrElse<R>(
      {R Function(GetDescEvent) getDescEvent,
      R Function(GetDescEvent2) getDescEvent2,
      @required R Function(Template2Event) orElse}) {
    assert(() {
      if (orElse == null) {
        throw 'Missing orElse case';
      }
      return true;
    }());
    switch (this._type) {
      case _Template2Event.GetDescEvent:
        if (getDescEvent == null) break;
        return getDescEvent(this as GetDescEvent);
      case _Template2Event.GetDescEvent2:
        if (getDescEvent2 == null) break;
        return getDescEvent2(this as GetDescEvent2);
    }
    return orElse(this);
  }

  Future<R> asyncWhenOrElse<R>(
      {FutureOr<R> Function(GetDescEvent) getDescEvent,
      FutureOr<R> Function(GetDescEvent2) getDescEvent2,
      @required FutureOr<R> Function(Template2Event) orElse}) {
    assert(() {
      if (orElse == null) {
        throw 'Missing orElse case';
      }
      return true;
    }());
    switch (this._type) {
      case _Template2Event.GetDescEvent:
        if (getDescEvent == null) break;
        return getDescEvent(this as GetDescEvent);
      case _Template2Event.GetDescEvent2:
        if (getDescEvent2 == null) break;
        return getDescEvent2(this as GetDescEvent2);
    }
    return orElse(this);
  }

//ignore: missing_return
  Future<void> whenPartial(
      {FutureOr<void> Function(GetDescEvent) getDescEvent,
      FutureOr<void> Function(GetDescEvent2) getDescEvent2}) {
    assert(() {
      if (getDescEvent == null && getDescEvent2 == null) {
        throw 'provide at least one branch';
      }
      return true;
    }());
    switch (this._type) {
      case _Template2Event.GetDescEvent:
        if (getDescEvent == null) break;
        return getDescEvent(this as GetDescEvent);
      case _Template2Event.GetDescEvent2:
        if (getDescEvent2 == null) break;
        return getDescEvent2(this as GetDescEvent2);
    }
  }

  @override
  List get props => const [];
}

@immutable
class GetDescEvent extends Template2Event {
  const GetDescEvent._() : super(_Template2Event.GetDescEvent);

  factory GetDescEvent() {
    _instance ??= const GetDescEvent._();
    return _instance;
  }

  static GetDescEvent _instance;
}

@immutable
class GetDescEvent2 extends Template2Event {
  const GetDescEvent2({@required this.data})
      : super(_Template2Event.GetDescEvent2);

  final String data;

  @override
  String toString() => 'GetDescEvent2(data:${this.data})';
  @override
  List get props => [data];
}
