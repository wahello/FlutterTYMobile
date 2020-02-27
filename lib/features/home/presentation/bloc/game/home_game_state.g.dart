// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_game_state.dart';

// **************************************************************************
// SuperEnumGenerator
// **************************************************************************

@immutable
abstract class HomeGameState extends Equatable {
  const HomeGameState(this._type);

  factory HomeGameState.gInitial() = GInitial;

  factory HomeGameState.gLoading() = GLoading;

  factory HomeGameState.gLoaded({@required List<dynamic> tabsData}) = GLoaded;

  factory HomeGameState.gError({@required String message}) = GError;

  final _HomeGameState _type;

//ignore: missing_return
  R when<R>(
      {@required R Function(GInitial) gInitial,
      @required R Function(GLoading) gLoading,
      @required R Function(GLoaded) gLoaded,
      @required R Function(GError) gError}) {
    assert(() {
      if (gInitial == null ||
          gLoading == null ||
          gLoaded == null ||
          gError == null) {
        throw 'check for all possible cases';
      }
      return true;
    }());
    switch (this._type) {
      case _HomeGameState.GInitial:
        return gInitial(this as GInitial);
      case _HomeGameState.GLoading:
        return gLoading(this as GLoading);
      case _HomeGameState.GLoaded:
        return gLoaded(this as GLoaded);
      case _HomeGameState.GError:
        return gError(this as GError);
    }
  }

//ignore: missing_return
  Future<R> asyncWhen<R>(
      {@required FutureOr<R> Function(GInitial) gInitial,
      @required FutureOr<R> Function(GLoading) gLoading,
      @required FutureOr<R> Function(GLoaded) gLoaded,
      @required FutureOr<R> Function(GError) gError}) {
    assert(() {
      if (gInitial == null ||
          gLoading == null ||
          gLoaded == null ||
          gError == null) {
        throw 'check for all possible cases';
      }
      return true;
    }());
    switch (this._type) {
      case _HomeGameState.GInitial:
        return gInitial(this as GInitial);
      case _HomeGameState.GLoading:
        return gLoading(this as GLoading);
      case _HomeGameState.GLoaded:
        return gLoaded(this as GLoaded);
      case _HomeGameState.GError:
        return gError(this as GError);
    }
  }

  R whenOrElse<R>(
      {R Function(GInitial) gInitial,
      R Function(GLoading) gLoading,
      R Function(GLoaded) gLoaded,
      R Function(GError) gError,
      @required R Function(HomeGameState) orElse}) {
    assert(() {
      if (orElse == null) {
        throw 'Missing orElse case';
      }
      return true;
    }());
    switch (this._type) {
      case _HomeGameState.GInitial:
        if (gInitial == null) break;
        return gInitial(this as GInitial);
      case _HomeGameState.GLoading:
        if (gLoading == null) break;
        return gLoading(this as GLoading);
      case _HomeGameState.GLoaded:
        if (gLoaded == null) break;
        return gLoaded(this as GLoaded);
      case _HomeGameState.GError:
        if (gError == null) break;
        return gError(this as GError);
    }
    return orElse(this);
  }

  Future<R> asyncWhenOrElse<R>(
      {FutureOr<R> Function(GInitial) gInitial,
      FutureOr<R> Function(GLoading) gLoading,
      FutureOr<R> Function(GLoaded) gLoaded,
      FutureOr<R> Function(GError) gError,
      @required FutureOr<R> Function(HomeGameState) orElse}) {
    assert(() {
      if (orElse == null) {
        throw 'Missing orElse case';
      }
      return true;
    }());
    switch (this._type) {
      case _HomeGameState.GInitial:
        if (gInitial == null) break;
        return gInitial(this as GInitial);
      case _HomeGameState.GLoading:
        if (gLoading == null) break;
        return gLoading(this as GLoading);
      case _HomeGameState.GLoaded:
        if (gLoaded == null) break;
        return gLoaded(this as GLoaded);
      case _HomeGameState.GError:
        if (gError == null) break;
        return gError(this as GError);
    }
    return orElse(this);
  }

//ignore: missing_return
  Future<void> whenPartial(
      {FutureOr<void> Function(GInitial) gInitial,
      FutureOr<void> Function(GLoading) gLoading,
      FutureOr<void> Function(GLoaded) gLoaded,
      FutureOr<void> Function(GError) gError}) {
    assert(() {
      if (gInitial == null &&
          gLoading == null &&
          gLoaded == null &&
          gError == null) {
        throw 'provide at least one branch';
      }
      return true;
    }());
    switch (this._type) {
      case _HomeGameState.GInitial:
        if (gInitial == null) break;
        return gInitial(this as GInitial);
      case _HomeGameState.GLoading:
        if (gLoading == null) break;
        return gLoading(this as GLoading);
      case _HomeGameState.GLoaded:
        if (gLoaded == null) break;
        return gLoaded(this as GLoaded);
      case _HomeGameState.GError:
        if (gError == null) break;
        return gError(this as GError);
    }
  }

  @override
  List get props => const [];
}

@immutable
class GInitial extends HomeGameState {
  const GInitial._() : super(_HomeGameState.GInitial);

  factory GInitial() {
    _instance ??= const GInitial._();
    return _instance;
  }

  static GInitial _instance;
}

@immutable
class GLoading extends HomeGameState {
  const GLoading._() : super(_HomeGameState.GLoading);

  factory GLoading() {
    _instance ??= const GLoading._();
    return _instance;
  }

  static GLoading _instance;
}

@immutable
class GLoaded extends HomeGameState {
  const GLoaded({@required this.tabsData}) : super(_HomeGameState.GLoaded);

  final List<dynamic> tabsData;

  @override
  String toString() => 'GLoaded(tabsData:${this.tabsData})';
  @override
  List get props => [tabsData];
}

@immutable
class GError extends HomeGameState {
  const GError({@required this.message}) : super(_HomeGameState.GError);

  final String message;

  @override
  String toString() => 'GError(message:${this.message})';
  @override
  List get props => [message];
}
