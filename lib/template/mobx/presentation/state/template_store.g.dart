// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'template_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$TemplateStore on _TemplateStore, Store {
  Computed<StoreState> _$stateComputed;

  @override
  StoreState get state =>
      (_$stateComputed ??= Computed<StoreState>(() => super.state)).value;

  final _$_descFutureAtom = Atom(name: '_TemplateStore._descFuture');

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

  final _$descriptionAtom = Atom(name: '_TemplateStore.description');

  @override
  String get description {
    _$descriptionAtom.context.enforceReadPolicy(_$descriptionAtom);
    _$descriptionAtom.reportObserved();
    return super.description;
  }

  @override
  set description(String value) {
    _$descriptionAtom.context.conditionallyRunInAction(() {
      super.description = value;
      _$descriptionAtom.reportChanged();
    }, _$descriptionAtom, name: '${_$descriptionAtom.name}_set');
  }

  final _$errorMessageAtom = Atom(name: '_TemplateStore.errorMessage');

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

  final _$getDescriptionAsyncAction = AsyncAction('getDescription');

  @override
  Future<dynamic> getDescription() {
    return _$getDescriptionAsyncAction.run(() => super.getDescription());
  }

  @override
  String toString() {
    final string =
        'description: ${description.toString()},errorMessage: ${errorMessage.toString()},state: ${state.toString()}';
    return '{$string}';
  }
}
