// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_game_tabs_state.dart';

// **************************************************************************
// SuperEnumGenerator
// **************************************************************************

@immutable
abstract class HomeGameTabsState extends Equatable {
  const HomeGameTabsState(this._type);

  factory HomeGameTabsState.tInitial() = TInitial;

  factory HomeGameTabsState.tLoading() = TLoading;

  factory HomeGameTabsState.tLoaded({@required GameTypesEntity types}) =
      TLoaded;

  factory HomeGameTabsState.tError({@required String message}) = TError;

  final _HomeGameTabsState _type;

//ignore: missing_return
  R when<R>(
      {@required R Function(TInitial) tInitial,
      @required R Function(TLoading) tLoading,
      @required R Function(TLoaded) tLoaded,
      @required R Function(TError) tError}) {
    assert(() {
      if (tInitial == null ||
          tLoading == null ||
          tLoaded == null ||
          tError == null) {
        throw 'check for all possible cases';
      }
      return true;
    }());
    switch (this._type) {
      case _HomeGameTabsState.TInitial:
        return tInitial(this as TInitial);
      case _HomeGameTabsState.TLoading:
        return tLoading(this as TLoading);
      case _HomeGameTabsState.TLoaded:
        return tLoaded(this as TLoaded);
      case _HomeGameTabsState.TError:
        return tError(this as TError);
    }
  }

//ignore: missing_return
  Future<R> asyncWhen<R>(
      {@required FutureOr<R> Function(TInitial) tInitial,
      @required FutureOr<R> Function(TLoading) tLoading,
      @required FutureOr<R> Function(TLoaded) tLoaded,
      @required FutureOr<R> Function(TError) tError}) {
    assert(() {
      if (tInitial == null ||
          tLoading == null ||
          tLoaded == null ||
          tError == null) {
        throw 'check for all possible cases';
      }
      return true;
    }());
    switch (this._type) {
      case _HomeGameTabsState.TInitial:
        return tInitial(this as TInitial);
      case _HomeGameTabsState.TLoading:
        return tLoading(this as TLoading);
      case _HomeGameTabsState.TLoaded:
        return tLoaded(this as TLoaded);
      case _HomeGameTabsState.TError:
        return tError(this as TError);
    }
  }

  R whenOrElse<R>(
      {R Function(TInitial) tInitial,
      R Function(TLoading) tLoading,
      R Function(TLoaded) tLoaded,
      R Function(TError) tError,
      @required R Function(HomeGameTabsState) orElse}) {
    assert(() {
      if (orElse == null) {
        throw 'Missing orElse case';
      }
      return true;
    }());
    switch (this._type) {
      case _HomeGameTabsState.TInitial:
        if (tInitial == null) break;
        return tInitial(this as TInitial);
      case _HomeGameTabsState.TLoading:
        if (tLoading == null) break;
        return tLoading(this as TLoading);
      case _HomeGameTabsState.TLoaded:
        if (tLoaded == null) break;
        return tLoaded(this as TLoaded);
      case _HomeGameTabsState.TError:
        if (tError == null) break;
        return tError(this as TError);
    }
    return orElse(this);
  }

  Future<R> asyncWhenOrElse<R>(
      {FutureOr<R> Function(TInitial) tInitial,
      FutureOr<R> Function(TLoading) tLoading,
      FutureOr<R> Function(TLoaded) tLoaded,
      FutureOr<R> Function(TError) tError,
      @required FutureOr<R> Function(HomeGameTabsState) orElse}) {
    assert(() {
      if (orElse == null) {
        throw 'Missing orElse case';
      }
      return true;
    }());
    switch (this._type) {
      case _HomeGameTabsState.TInitial:
        if (tInitial == null) break;
        return tInitial(this as TInitial);
      case _HomeGameTabsState.TLoading:
        if (tLoading == null) break;
        return tLoading(this as TLoading);
      case _HomeGameTabsState.TLoaded:
        if (tLoaded == null) break;
        return tLoaded(this as TLoaded);
      case _HomeGameTabsState.TError:
        if (tError == null) break;
        return tError(this as TError);
    }
    return orElse(this);
  }

//ignore: missing_return
  Future<void> whenPartial(
      {FutureOr<void> Function(TInitial) tInitial,
      FutureOr<void> Function(TLoading) tLoading,
      FutureOr<void> Function(TLoaded) tLoaded,
      FutureOr<void> Function(TError) tError}) {
    assert(() {
      if (tInitial == null &&
          tLoading == null &&
          tLoaded == null &&
          tError == null) {
        throw 'provide at least one branch';
      }
      return true;
    }());
    switch (this._type) {
      case _HomeGameTabsState.TInitial:
        if (tInitial == null) break;
        return tInitial(this as TInitial);
      case _HomeGameTabsState.TLoading:
        if (tLoading == null) break;
        return tLoading(this as TLoading);
      case _HomeGameTabsState.TLoaded:
        if (tLoaded == null) break;
        return tLoaded(this as TLoaded);
      case _HomeGameTabsState.TError:
        if (tError == null) break;
        return tError(this as TError);
    }
  }

  @override
  List get props => const [];
}

@immutable
class TInitial extends HomeGameTabsState {
  const TInitial._() : super(_HomeGameTabsState.TInitial);

  factory TInitial() {
    _instance ??= const TInitial._();
    return _instance;
  }

  static TInitial _instance;
}

@immutable
class TLoading extends HomeGameTabsState {
  const TLoading._() : super(_HomeGameTabsState.TLoading);

  factory TLoading() {
    _instance ??= const TLoading._();
    return _instance;
  }

  static TLoading _instance;
}

@immutable
class TLoaded extends HomeGameTabsState {
  const TLoaded({@required this.types}) : super(_HomeGameTabsState.TLoaded);

  final GameTypesEntity types;

  @override
  String toString() => 'TLoaded(types:${this.types})';
  @override
  List get props => [types];
}

@immutable
class TError extends HomeGameTabsState {
  const TError({@required this.message}) : super(_HomeGameTabsState.TError);

  final String message;

  @override
  String toString() => 'TError(message:${this.message})';
  @override
  List get props => [message];
}
