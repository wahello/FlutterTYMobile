import 'package:flutter_ty_mobile/core/store_export.dart';
import 'package:flutter_ty_mobile/features/promo/data/models/promo_freezed.dart';
import 'package:flutter_ty_mobile/features/promo/data/repository/promo_repository.dart';

part 'promo_store.g.dart';

class PromoStore = _PromoStore with _$PromoStore;

enum PromoStoreState { initial, loading, loaded }

abstract class _PromoStore with Store {
  final PromoRepository _repository;

  _PromoStore(this._repository);

  @observable
  ObservableFuture<Either<Failure, List<PromoEntity>>> _promoFuture;

  @observable
  List<PromoEntity> promos;

  @observable
  String errorMessage;

  @computed
  PromoStoreState get state {
    // If the user has not yet searched for a weather forecast or there has been an error
    if (_promoFuture == null || _promoFuture.status == FutureStatus.rejected) {
      return PromoStoreState.initial;
    }
    // Pending Future means "loading"
    // Fulfilled Future means "loaded"
    return _promoFuture.status == FutureStatus.pending
        ? PromoStoreState.loading
        : PromoStoreState.loaded;
  }

  @action
  Future getPromoList() async {
    try {
      // Reset the possible previous error message.
      errorMessage = null;
      // Fetch from the repository and wrap the regular Future into an observable.
      _promoFuture = ObservableFuture(_repository.getPromos());
      // ObservableFuture extends Future - it can be awaited and exceptions will propagate as usual.
      await _promoFuture.then((result) {
//        print('promo store result: $result');
        result.fold(
          (failure) {
            errorMessage = failure.message;
          },
          (list) {
            if (list.isNotEmpty) {
              // sort with normal sort value
              list.sort((a, b) => a.sort.compareTo(b.sort)); // 1, 2, 3...
              // sort with higher top value
              list.sort((b, a) => a.top.compareTo(b.top)); // 2, 1, 0...
            }
            promos = list;
          },
        );
      });
    } on Exception {
      errorMessage = Failure.internal().message;
    }
  }
}
