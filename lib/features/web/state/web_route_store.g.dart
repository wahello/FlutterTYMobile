// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'web_route_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$WebRouteStore on _WebRouteStore, Store {
  Computed<WebRouteStoreState> _$stateComputed;

  @override
  WebRouteStoreState get state =>
      (_$stateComputed ??= Computed<WebRouteStoreState>(() => super.state))
          .value;

  final _$_descFutureAtom = Atom(name: '_WebRouteStore._descFuture');

  @override
  ObservableFuture<String> get _descFuture {
    _$_descFutureAtom.context.enforceReadPolicy(_$_descFutureAtom);
    _$_descFutureAtom.reportObserved();
    return super._descFuture;
  }

  @override
  set _descFuture(ObservableFuture<String> value) {
    _$_descFutureAtom.context.conditionallyRunInAction(() {
      super._descFuture = value;
      _$_descFutureAtom.reportChanged();
    }, _$_descFutureAtom, name: '${_$_descFutureAtom.name}_set');
  }

  final _$descAtom = Atom(name: '_WebRouteStore.desc');

  @override
  String get desc {
    _$descAtom.context.enforceReadPolicy(_$descAtom);
    _$descAtom.reportObserved();
    return super.desc;
  }

  @override
  set desc(String value) {
    _$descAtom.context.conditionallyRunInAction(() {
      super.desc = value;
      _$descAtom.reportChanged();
    }, _$descAtom, name: '${_$descAtom.name}_set');
  }

  final _$errorMessageAtom = Atom(name: '_WebRouteStore.errorMessage');

  @override
  String get errorMessage {
    _$errorMessageAtom.context.enforceReadPolicy(_$errorMessageAtom);
    _$errorMessageAtom.reportObserved();
    return super.errorMessage;
  }

  @override
  set errorMessage(String value) {
    _$errorMessageAtom.context.conditionallyRunInAction(() {
      super.errorMessage = value;
      _$errorMessageAtom.reportChanged();
    }, _$errorMessageAtom, name: '${_$errorMessageAtom.name}_set');
  }

  final _$getDescAsyncAction = AsyncAction('getDesc');

  @override
  Future<dynamic> getDesc() {
    return _$getDescAsyncAction.run(() => super.getDesc());
  }

  @override
  String toString() {
    final string =
        'desc: ${desc.toString()},errorMessage: ${errorMessage.toString()},state: ${state.toString()}';
    return '{$string}';
  }
}
