// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'template2_state.dart';

// **************************************************************************
// SuperEnumGenerator
// **************************************************************************

@immutable
abstract class Template2State extends Equatable {
  const Template2State(this._type);

  factory Template2State.tp2Initial() = Tp2Initial;

  factory Template2State.tp2Loading() = Tp2Loading;

  factory Template2State.tp2Loaded({@required String description}) = Tp2Loaded;

  factory Template2State.tp2Error({@required String message}) = Tp2Error;

  final _Template2State _type;

//ignore: missing_return
  R when<R>(
      {@required R Function(Tp2Initial) tp2Initial,
      @required R Function(Tp2Loading) tp2Loading,
      @required R Function(Tp2Loaded) tp2Loaded,
      @required R Function(Tp2Error) tp2Error}) {
    assert(() {
      if (tp2Initial == null ||
          tp2Loading == null ||
          tp2Loaded == null ||
          tp2Error == null) {
        throw 'check for all possible cases';
      }
      return true;
    }());
    switch (this._type) {
      case _Template2State.Tp2Initial:
        return tp2Initial(this as Tp2Initial);
      case _Template2State.Tp2Loading:
        return tp2Loading(this as Tp2Loading);
      case _Template2State.Tp2Loaded:
        return tp2Loaded(this as Tp2Loaded);
      case _Template2State.Tp2Error:
        return tp2Error(this as Tp2Error);
    }
  }

//ignore: missing_return
  Future<R> asyncWhen<R>(
      {@required FutureOr<R> Function(Tp2Initial) tp2Initial,
      @required FutureOr<R> Function(Tp2Loading) tp2Loading,
      @required FutureOr<R> Function(Tp2Loaded) tp2Loaded,
      @required FutureOr<R> Function(Tp2Error) tp2Error}) {
    assert(() {
      if (tp2Initial == null ||
          tp2Loading == null ||
          tp2Loaded == null ||
          tp2Error == null) {
        throw 'check for all possible cases';
      }
      return true;
    }());
    switch (this._type) {
      case _Template2State.Tp2Initial:
        return tp2Initial(this as Tp2Initial);
      case _Template2State.Tp2Loading:
        return tp2Loading(this as Tp2Loading);
      case _Template2State.Tp2Loaded:
        return tp2Loaded(this as Tp2Loaded);
      case _Template2State.Tp2Error:
        return tp2Error(this as Tp2Error);
    }
  }

  R whenOrElse<R>(
      {R Function(Tp2Initial) tp2Initial,
      R Function(Tp2Loading) tp2Loading,
      R Function(Tp2Loaded) tp2Loaded,
      R Function(Tp2Error) tp2Error,
      @required R Function(Template2State) orElse}) {
    assert(() {
      if (orElse == null) {
        throw 'Missing orElse case';
      }
      return true;
    }());
    switch (this._type) {
      case _Template2State.Tp2Initial:
        if (tp2Initial == null) break;
        return tp2Initial(this as Tp2Initial);
      case _Template2State.Tp2Loading:
        if (tp2Loading == null) break;
        return tp2Loading(this as Tp2Loading);
      case _Template2State.Tp2Loaded:
        if (tp2Loaded == null) break;
        return tp2Loaded(this as Tp2Loaded);
      case _Template2State.Tp2Error:
        if (tp2Error == null) break;
        return tp2Error(this as Tp2Error);
    }
    return orElse(this);
  }

  Future<R> asyncWhenOrElse<R>(
      {FutureOr<R> Function(Tp2Initial) tp2Initial,
      FutureOr<R> Function(Tp2Loading) tp2Loading,
      FutureOr<R> Function(Tp2Loaded) tp2Loaded,
      FutureOr<R> Function(Tp2Error) tp2Error,
      @required FutureOr<R> Function(Template2State) orElse}) {
    assert(() {
      if (orElse == null) {
        throw 'Missing orElse case';
      }
      return true;
    }());
    switch (this._type) {
      case _Template2State.Tp2Initial:
        if (tp2Initial == null) break;
        return tp2Initial(this as Tp2Initial);
      case _Template2State.Tp2Loading:
        if (tp2Loading == null) break;
        return tp2Loading(this as Tp2Loading);
      case _Template2State.Tp2Loaded:
        if (tp2Loaded == null) break;
        return tp2Loaded(this as Tp2Loaded);
      case _Template2State.Tp2Error:
        if (tp2Error == null) break;
        return tp2Error(this as Tp2Error);
    }
    return orElse(this);
  }

//ignore: missing_return
  Future<void> whenPartial(
      {FutureOr<void> Function(Tp2Initial) tp2Initial,
      FutureOr<void> Function(Tp2Loading) tp2Loading,
      FutureOr<void> Function(Tp2Loaded) tp2Loaded,
      FutureOr<void> Function(Tp2Error) tp2Error}) {
    assert(() {
      if (tp2Initial == null &&
          tp2Loading == null &&
          tp2Loaded == null &&
          tp2Error == null) {
        throw 'provide at least one branch';
      }
      return true;
    }());
    switch (this._type) {
      case _Template2State.Tp2Initial:
        if (tp2Initial == null) break;
        return tp2Initial(this as Tp2Initial);
      case _Template2State.Tp2Loading:
        if (tp2Loading == null) break;
        return tp2Loading(this as Tp2Loading);
      case _Template2State.Tp2Loaded:
        if (tp2Loaded == null) break;
        return tp2Loaded(this as Tp2Loaded);
      case _Template2State.Tp2Error:
        if (tp2Error == null) break;
        return tp2Error(this as Tp2Error);
    }
  }

  @override
  List get props => const [];
}

@immutable
class Tp2Initial extends Template2State {
  const Tp2Initial._() : super(_Template2State.Tp2Initial);

  factory Tp2Initial() {
    _instance ??= const Tp2Initial._();
    return _instance;
  }

  static Tp2Initial _instance;
}

@immutable
class Tp2Loading extends Template2State {
  const Tp2Loading._() : super(_Template2State.Tp2Loading);

  factory Tp2Loading() {
    _instance ??= const Tp2Loading._();
    return _instance;
  }

  static Tp2Loading _instance;
}

@immutable
class Tp2Loaded extends Template2State {
  const Tp2Loaded({@required this.description})
      : super(_Template2State.Tp2Loaded);

  final String description;

  @override
  String toString() => 'Tp2Loaded(description:${this.description})';
  @override
  List get props => [description];
}

@immutable
class Tp2Error extends Template2State {
  const Tp2Error({@required this.message}) : super(_Template2State.Tp2Error);

  final String message;

  @override
  String toString() => 'Tp2Error(message:${this.message})';
  @override
  List get props => [message];
}
