// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_marquee_state.dart';

// **************************************************************************
// SuperEnumGenerator
// **************************************************************************

@immutable
abstract class HomeMarqueeState extends Equatable {
  const HomeMarqueeState(this._type);

  factory HomeMarqueeState.mInitial() = MInitial;

  factory HomeMarqueeState.mLoading() = MLoading;

  factory HomeMarqueeState.mLoaded({@required List<dynamic> marquee}) = MLoaded;

  factory HomeMarqueeState.mError({@required String message}) = MError;

  final _HomeMarqueeState _type;

//ignore: missing_return
  R when<R>(
      {@required R Function(MInitial) mInitial,
      @required R Function(MLoading) mLoading,
      @required R Function(MLoaded) mLoaded,
      @required R Function(MError) mError}) {
    assert(() {
      if (mInitial == null ||
          mLoading == null ||
          mLoaded == null ||
          mError == null) {
        throw 'check for all possible cases';
      }
      return true;
    }());
    switch (this._type) {
      case _HomeMarqueeState.MInitial:
        return mInitial(this as MInitial);
      case _HomeMarqueeState.MLoading:
        return mLoading(this as MLoading);
      case _HomeMarqueeState.MLoaded:
        return mLoaded(this as MLoaded);
      case _HomeMarqueeState.MError:
        return mError(this as MError);
    }
  }

//ignore: missing_return
  Future<R> asyncWhen<R>(
      {@required FutureOr<R> Function(MInitial) mInitial,
      @required FutureOr<R> Function(MLoading) mLoading,
      @required FutureOr<R> Function(MLoaded) mLoaded,
      @required FutureOr<R> Function(MError) mError}) {
    assert(() {
      if (mInitial == null ||
          mLoading == null ||
          mLoaded == null ||
          mError == null) {
        throw 'check for all possible cases';
      }
      return true;
    }());
    switch (this._type) {
      case _HomeMarqueeState.MInitial:
        return mInitial(this as MInitial);
      case _HomeMarqueeState.MLoading:
        return mLoading(this as MLoading);
      case _HomeMarqueeState.MLoaded:
        return mLoaded(this as MLoaded);
      case _HomeMarqueeState.MError:
        return mError(this as MError);
    }
  }

  R whenOrElse<R>(
      {R Function(MInitial) mInitial,
      R Function(MLoading) mLoading,
      R Function(MLoaded) mLoaded,
      R Function(MError) mError,
      @required R Function(HomeMarqueeState) orElse}) {
    assert(() {
      if (orElse == null) {
        throw 'Missing orElse case';
      }
      return true;
    }());
    switch (this._type) {
      case _HomeMarqueeState.MInitial:
        if (mInitial == null) break;
        return mInitial(this as MInitial);
      case _HomeMarqueeState.MLoading:
        if (mLoading == null) break;
        return mLoading(this as MLoading);
      case _HomeMarqueeState.MLoaded:
        if (mLoaded == null) break;
        return mLoaded(this as MLoaded);
      case _HomeMarqueeState.MError:
        if (mError == null) break;
        return mError(this as MError);
    }
    return orElse(this);
  }

  Future<R> asyncWhenOrElse<R>(
      {FutureOr<R> Function(MInitial) mInitial,
      FutureOr<R> Function(MLoading) mLoading,
      FutureOr<R> Function(MLoaded) mLoaded,
      FutureOr<R> Function(MError) mError,
      @required FutureOr<R> Function(HomeMarqueeState) orElse}) {
    assert(() {
      if (orElse == null) {
        throw 'Missing orElse case';
      }
      return true;
    }());
    switch (this._type) {
      case _HomeMarqueeState.MInitial:
        if (mInitial == null) break;
        return mInitial(this as MInitial);
      case _HomeMarqueeState.MLoading:
        if (mLoading == null) break;
        return mLoading(this as MLoading);
      case _HomeMarqueeState.MLoaded:
        if (mLoaded == null) break;
        return mLoaded(this as MLoaded);
      case _HomeMarqueeState.MError:
        if (mError == null) break;
        return mError(this as MError);
    }
    return orElse(this);
  }

//ignore: missing_return
  Future<void> whenPartial(
      {FutureOr<void> Function(MInitial) mInitial,
      FutureOr<void> Function(MLoading) mLoading,
      FutureOr<void> Function(MLoaded) mLoaded,
      FutureOr<void> Function(MError) mError}) {
    assert(() {
      if (mInitial == null &&
          mLoading == null &&
          mLoaded == null &&
          mError == null) {
        throw 'provide at least one branch';
      }
      return true;
    }());
    switch (this._type) {
      case _HomeMarqueeState.MInitial:
        if (mInitial == null) break;
        return mInitial(this as MInitial);
      case _HomeMarqueeState.MLoading:
        if (mLoading == null) break;
        return mLoading(this as MLoading);
      case _HomeMarqueeState.MLoaded:
        if (mLoaded == null) break;
        return mLoaded(this as MLoaded);
      case _HomeMarqueeState.MError:
        if (mError == null) break;
        return mError(this as MError);
    }
  }

  @override
  List get props => const [];
}

@immutable
class MInitial extends HomeMarqueeState {
  const MInitial._() : super(_HomeMarqueeState.MInitial);

  factory MInitial() {
    _instance ??= const MInitial._();
    return _instance;
  }

  static MInitial _instance;
}

@immutable
class MLoading extends HomeMarqueeState {
  const MLoading._() : super(_HomeMarqueeState.MLoading);

  factory MLoading() {
    _instance ??= const MLoading._();
    return _instance;
  }

  static MLoading _instance;
}

@immutable
class MLoaded extends HomeMarqueeState {
  const MLoaded({@required this.marquee}) : super(_HomeMarqueeState.MLoaded);

  final List<dynamic> marquee;

  @override
  String toString() => 'MLoaded(marquee:${this.marquee})';
  @override
  List get props => [marquee];
}

@immutable
class MError extends HomeMarqueeState {
  const MError({@required this.message}) : super(_HomeMarqueeState.MError);

  final String message;

  @override
  String toString() => 'MError(message:${this.message})';
  @override
  List get props => [message];
}
