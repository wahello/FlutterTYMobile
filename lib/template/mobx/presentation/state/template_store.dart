import 'package:flutter_ty_mobile/template/mobx/data/repository/template_repository.dart';
import 'package:mobx/mobx.dart';

part 'template_store.g.dart';

class TemplateStore = _TemplateStore with _$TemplateStore;

enum StoreState { initial, loading, loaded }

abstract class _TemplateStore with Store {
  final TemplateRepository _templateRepository;

  _TemplateStore(this._templateRepository);

  @observable
  ObservableFuture<String> _descFuture;

  @observable
  String description = '';

  @observable
  String errorMessage;

  @computed
  StoreState get state {
    // If the user has not yet searched for a weather forecast or there has been an error
    if (_descFuture == null ||
        _descFuture.status == FutureStatus.rejected) {
      return StoreState.initial;
    }
    // Pending Future means "loading"
    // Fulfilled Future means "loaded"
    return _descFuture.status == FutureStatus.pending
        ? StoreState.loading
        : StoreState.loaded;
  }

  @action
  Future getDescription() async {
    try {
      // Reset the possible previous error message.
      errorMessage = null;
      // Fetch weather from the repository and wrap the regular Future into an observable.
      // This _weatherFuture triggers updates to the computed state property.
      _descFuture =
          ObservableFuture(_templateRepository.fetchString());
      // ObservableFuture extends Future - it can be awaited and exceptions will propagate as usual.
      description = await _descFuture;
    } on Exception {
      errorMessage = "Couldn't fetch description. Is the device online?";
    }
  }
}