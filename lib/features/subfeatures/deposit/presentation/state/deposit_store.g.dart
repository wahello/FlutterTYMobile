// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deposit_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$DepositStore on _DepositStore, Store {
  Computed<DepositStoreState> _$stateComputed;

  @override
  DepositStoreState get state =>
      (_$stateComputed ??= Computed<DepositStoreState>(() => super.state))
          .value;

  final _$_paymentFutureAtom = Atom(name: '_DepositStore._paymentFuture');

  @override
  ObservableFuture<Either<Failure, PaymentRaw>> get _paymentFuture {
    _$_paymentFutureAtom.context.enforceReadPolicy(_$_paymentFutureAtom);
    _$_paymentFutureAtom.reportObserved();
    return super._paymentFuture;
  }

  @override
  set _paymentFuture(ObservableFuture<Either<Failure, PaymentRaw>> value) {
    _$_paymentFutureAtom.context.conditionallyRunInAction(() {
      super._paymentFuture = value;
      _$_paymentFutureAtom.reportChanged();
    }, _$_paymentFutureAtom, name: '${_$_paymentFutureAtom.name}_set');
  }

  final _$paymentTypesAtom = Atom(name: '_DepositStore.paymentTypes');

  @override
  List<PaymentEnum> get paymentTypes {
    _$paymentTypesAtom.context.enforceReadPolicy(_$paymentTypesAtom);
    _$paymentTypesAtom.reportObserved();
    return super.paymentTypes;
  }

  @override
  set paymentTypes(List<PaymentEnum> value) {
    _$paymentTypesAtom.context.conditionallyRunInAction(() {
      super.paymentTypes = value;
      _$paymentTypesAtom.reportChanged();
    }, _$paymentTypesAtom, name: '${_$paymentTypesAtom.name}_set');
  }

  final _$_promoFutureAtom = Atom(name: '_DepositStore._promoFuture');

  @override
  ObservableFuture<Either<Failure, PaymentPromoTypeJson>> get _promoFuture {
    _$_promoFutureAtom.context.enforceReadPolicy(_$_promoFutureAtom);
    _$_promoFutureAtom.reportObserved();
    return super._promoFuture;
  }

  @override
  set _promoFuture(
      ObservableFuture<Either<Failure, PaymentPromoTypeJson>> value) {
    _$_promoFutureAtom.context.conditionallyRunInAction(() {
      super._promoFuture = value;
      _$_promoFutureAtom.reportChanged();
    }, _$_promoFutureAtom, name: '${_$_promoFutureAtom.name}_set');
  }

  final _$_depositFutureAtom = Atom(name: '_DepositStore._depositFuture');

  @override
  ObservableFuture<Either<Failure, DepositResult>> get _depositFuture {
    _$_depositFutureAtom.context.enforceReadPolicy(_$_depositFutureAtom);
    _$_depositFutureAtom.reportObserved();
    return super._depositFuture;
  }

  @override
  set _depositFuture(ObservableFuture<Either<Failure, DepositResult>> value) {
    _$_depositFutureAtom.context.conditionallyRunInAction(() {
      super._depositFuture = value;
      _$_depositFutureAtom.reportChanged();
    }, _$_depositFutureAtom, name: '${_$_depositFutureAtom.name}_set');
  }

  final _$waitForDepositResultAtom =
      Atom(name: '_DepositStore.waitForDepositResult');

  @override
  bool get waitForDepositResult {
    _$waitForDepositResultAtom.context
        .enforceReadPolicy(_$waitForDepositResultAtom);
    _$waitForDepositResultAtom.reportObserved();
    return super.waitForDepositResult;
  }

  @override
  set waitForDepositResult(bool value) {
    _$waitForDepositResultAtom.context.conditionallyRunInAction(() {
      super.waitForDepositResult = value;
      _$waitForDepositResultAtom.reportChanged();
    }, _$waitForDepositResultAtom,
        name: '${_$waitForDepositResultAtom.name}_set');
  }

  final _$depositResultAtom = Atom(name: '_DepositStore.depositResult');

  @override
  DepositResult get depositResult {
    _$depositResultAtom.context.enforceReadPolicy(_$depositResultAtom);
    _$depositResultAtom.reportObserved();
    return super.depositResult;
  }

  @override
  set depositResult(DepositResult value) {
    _$depositResultAtom.context.conditionallyRunInAction(() {
      super.depositResult = value;
      _$depositResultAtom.reportChanged();
    }, _$depositResultAtom, name: '${_$depositResultAtom.name}_set');
  }

  final _$errorMessageAtom = Atom(name: '_DepositStore.errorMessage');

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

  final _$getPaymentTypeAsyncAction = AsyncAction('getPaymentType');

  @override
  Future<dynamic> getPaymentType() {
    return _$getPaymentTypeAsyncAction.run(() => super.getPaymentType());
  }

  final _$getPaymentPromoAsyncAction = AsyncAction('getPaymentPromo');

  @override
  Future<dynamic> getPaymentPromo() {
    return _$getPaymentPromoAsyncAction.run(() => super.getPaymentPromo());
  }

  final _$sendRequestAsyncAction = AsyncAction('sendRequest');

  @override
  Future<dynamic> sendRequest(DepositDataForm form) {
    return _$sendRequestAsyncAction.run(() => super.sendRequest(form));
  }

  @override
  String toString() {
    final string =
        'paymentTypes: ${paymentTypes.toString()},waitForDepositResult: ${waitForDepositResult.toString()},depositResult: ${depositResult.toString()},errorMessage: ${errorMessage.toString()},state: ${state.toString()}';
    return '{$string}';
  }
}
