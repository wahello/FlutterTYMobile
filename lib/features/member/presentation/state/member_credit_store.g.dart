// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'member_credit_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$MemberCreditStore on _MemberCreditStore, Store {
  Computed<MemberCreditStoreState> _$stateComputed;

  @override
  MemberCreditStoreState get state =>
      (_$stateComputed ??= Computed<MemberCreditStoreState>(() => super.state))
          .value;

  final _$_userFutureAtom = Atom(name: '_MemberCreditStore._userFuture');

  @override
  ObservableFuture<LoginStatus> get _userFuture {
    _$_userFutureAtom.context.enforceReadPolicy(_$_userFutureAtom);
    _$_userFutureAtom.reportObserved();
    return super._userFuture;
  }

  @override
  set _userFuture(ObservableFuture<LoginStatus> value) {
    _$_userFutureAtom.context.conditionallyRunInAction(() {
      super._userFuture = value;
      _$_userFutureAtom.reportChanged();
    }, _$_userFutureAtom, name: '${_$_userFutureAtom.name}_set');
  }

  final _$userAtom = Atom(name: '_MemberCreditStore.user');

  @override
  UserEntity get user {
    _$userAtom.context.enforceReadPolicy(_$userAtom);
    _$userAtom.reportObserved();
    return super.user;
  }

  @override
  set user(UserEntity value) {
    _$userAtom.context.conditionallyRunInAction(() {
      super.user = value;
      _$userAtom.reportChanged();
    }, _$userAtom, name: '${_$userAtom.name}_set');
  }

  final _$_creditFutureAtom = Atom(name: '_MemberCreditStore._creditFuture');

  @override
  ObservableFuture<String> get _creditFuture {
    _$_creditFutureAtom.context.enforceReadPolicy(_$_creditFutureAtom);
    _$_creditFutureAtom.reportObserved();
    return super._creditFuture;
  }

  @override
  set _creditFuture(ObservableFuture<String> value) {
    _$_creditFutureAtom.context.conditionallyRunInAction(() {
      super._creditFuture = value;
      _$_creditFutureAtom.reportChanged();
    }, _$_creditFutureAtom, name: '${_$_creditFutureAtom.name}_set');
  }

  final _$creditAtom = Atom(name: '_MemberCreditStore.credit');

  @override
  String get credit {
    _$creditAtom.context.enforceReadPolicy(_$creditAtom);
    _$creditAtom.reportObserved();
    return super.credit;
  }

  @override
  set credit(String value) {
    _$creditAtom.context.conditionallyRunInAction(() {
      super.credit = value;
      _$creditAtom.reportChanged();
    }, _$creditAtom, name: '${_$creditAtom.name}_set');
  }

  final _$getUserAsyncAction = AsyncAction('getUser');

  @override
  Future<UserEntity> getUser() {
    return _$getUserAsyncAction.run(() => super.getUser());
  }

  final _$getCreditAsyncAction = AsyncAction('getCredit');

  @override
  Future<dynamic> getCredit() {
    return _$getCreditAsyncAction.run(() => super.getCredit());
  }

  @override
  String toString() {
    final string =
        'user: ${user.toString()},credit: ${credit.toString()},state: ${state.toString()}';
    return '{$string}';
  }
}
