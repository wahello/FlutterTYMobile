// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'promo_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PromoStore on _PromoStore, Store {
  Computed<PromoStoreState> _$stateComputed;

  @override
  PromoStoreState get state =>
      (_$stateComputed ??= Computed<PromoStoreState>(() => super.state)).value;

  final _$_promoFutureAtom = Atom(name: '_PromoStore._promoFuture');

  @override
  ObservableFuture<Either<Failure, List<PromoEntity>>> get _promoFuture {
    _$_promoFutureAtom.context.enforceReadPolicy(_$_promoFutureAtom);
    _$_promoFutureAtom.reportObserved();
    return super._promoFuture;
  }

  @override
  set _promoFuture(ObservableFuture<Either<Failure, List<PromoEntity>>> value) {
    _$_promoFutureAtom.context.conditionallyRunInAction(() {
      super._promoFuture = value;
      _$_promoFutureAtom.reportChanged();
    }, _$_promoFutureAtom, name: '${_$_promoFutureAtom.name}_set');
  }

  final _$promosAtom = Atom(name: '_PromoStore.promos');

  @override
  List<PromoEntity> get promos {
    _$promosAtom.context.enforceReadPolicy(_$promosAtom);
    _$promosAtom.reportObserved();
    return super.promos;
  }

  @override
  set promos(List<PromoEntity> value) {
    _$promosAtom.context.conditionallyRunInAction(() {
      super.promos = value;
      _$promosAtom.reportChanged();
    }, _$promosAtom, name: '${_$promosAtom.name}_set');
  }

  final _$errorMessageAtom = Atom(name: '_PromoStore.errorMessage');

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

  final _$getPromoListAsyncAction = AsyncAction('getPromoList');

  @override
  Future<dynamic> getPromoList() {
    return _$getPromoListAsyncAction.run(() => super.getPromoList());
  }

  @override
  String toString() {
    final string =
        'promos: ${promos.toString()},errorMessage: ${errorMessage.toString()},state: ${state.toString()}';
    return '{$string}';
  }
}
