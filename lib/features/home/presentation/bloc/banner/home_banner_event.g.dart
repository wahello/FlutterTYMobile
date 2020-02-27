// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_banner_event.dart';

// **************************************************************************
// SuperEnumGenerator
// **************************************************************************

@immutable
abstract class HomeBannerEvent extends Equatable {
  const HomeBannerEvent(this._type);

  factory HomeBannerEvent.getBannerEvent() = GetBannerEvent;

  factory HomeBannerEvent.getBannerImageEvent() = GetBannerImageEvent;

  final _HomeBannerEvent _type;

//ignore: missing_return
  R when<R>(
      {@required R Function(GetBannerEvent) getBannerEvent,
      @required R Function(GetBannerImageEvent) getBannerImageEvent}) {
    assert(() {
      if (getBannerEvent == null || getBannerImageEvent == null) {
        throw 'check for all possible cases';
      }
      return true;
    }());
    switch (this._type) {
      case _HomeBannerEvent.GetBannerEvent:
        return getBannerEvent(this as GetBannerEvent);
      case _HomeBannerEvent.GetBannerImageEvent:
        return getBannerImageEvent(this as GetBannerImageEvent);
    }
  }

//ignore: missing_return
  Future<R> asyncWhen<R>(
      {@required
          FutureOr<R> Function(GetBannerEvent) getBannerEvent,
      @required
          FutureOr<R> Function(GetBannerImageEvent) getBannerImageEvent}) {
    assert(() {
      if (getBannerEvent == null || getBannerImageEvent == null) {
        throw 'check for all possible cases';
      }
      return true;
    }());
    switch (this._type) {
      case _HomeBannerEvent.GetBannerEvent:
        return getBannerEvent(this as GetBannerEvent);
      case _HomeBannerEvent.GetBannerImageEvent:
        return getBannerImageEvent(this as GetBannerImageEvent);
    }
  }

  R whenOrElse<R>(
      {R Function(GetBannerEvent) getBannerEvent,
      R Function(GetBannerImageEvent) getBannerImageEvent,
      @required R Function(HomeBannerEvent) orElse}) {
    assert(() {
      if (orElse == null) {
        throw 'Missing orElse case';
      }
      return true;
    }());
    switch (this._type) {
      case _HomeBannerEvent.GetBannerEvent:
        if (getBannerEvent == null) break;
        return getBannerEvent(this as GetBannerEvent);
      case _HomeBannerEvent.GetBannerImageEvent:
        if (getBannerImageEvent == null) break;
        return getBannerImageEvent(this as GetBannerImageEvent);
    }
    return orElse(this);
  }

  Future<R> asyncWhenOrElse<R>(
      {FutureOr<R> Function(GetBannerEvent) getBannerEvent,
      FutureOr<R> Function(GetBannerImageEvent) getBannerImageEvent,
      @required FutureOr<R> Function(HomeBannerEvent) orElse}) {
    assert(() {
      if (orElse == null) {
        throw 'Missing orElse case';
      }
      return true;
    }());
    switch (this._type) {
      case _HomeBannerEvent.GetBannerEvent:
        if (getBannerEvent == null) break;
        return getBannerEvent(this as GetBannerEvent);
      case _HomeBannerEvent.GetBannerImageEvent:
        if (getBannerImageEvent == null) break;
        return getBannerImageEvent(this as GetBannerImageEvent);
    }
    return orElse(this);
  }

//ignore: missing_return
  Future<void> whenPartial(
      {FutureOr<void> Function(GetBannerEvent) getBannerEvent,
      FutureOr<void> Function(GetBannerImageEvent) getBannerImageEvent}) {
    assert(() {
      if (getBannerEvent == null && getBannerImageEvent == null) {
        throw 'provide at least one branch';
      }
      return true;
    }());
    switch (this._type) {
      case _HomeBannerEvent.GetBannerEvent:
        if (getBannerEvent == null) break;
        return getBannerEvent(this as GetBannerEvent);
      case _HomeBannerEvent.GetBannerImageEvent:
        if (getBannerImageEvent == null) break;
        return getBannerImageEvent(this as GetBannerImageEvent);
    }
  }

  @override
  List get props => const [];
}

@immutable
class GetBannerEvent extends HomeBannerEvent {
  const GetBannerEvent._() : super(_HomeBannerEvent.GetBannerEvent);

  factory GetBannerEvent() {
    _instance ??= const GetBannerEvent._();
    return _instance;
  }

  static GetBannerEvent _instance;
}

@immutable
class GetBannerImageEvent extends HomeBannerEvent {
  const GetBannerImageEvent._() : super(_HomeBannerEvent.GetBannerImageEvent);

  factory GetBannerImageEvent() {
    _instance ??= const GetBannerImageEvent._();
    return _instance;
  }

  static GetBannerImageEvent _instance;
}
