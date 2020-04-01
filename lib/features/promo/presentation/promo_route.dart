import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart' show Observer;
import 'package:flutter_ty_mobile/features/general/bloc_widget_export.dart'
    show LoadingWidget, ToastMessage;

import '../../route_page_export.dart' show sl;
import 'state/promo_store.dart';
import 'widgets/promo_display.dart';

/// Main View of [Router.promoRoute]
///@author H.C.CHIANG
///@version 2020/3/9
class PromoRoute extends StatefulWidget {
  final int openPromoId;

  PromoRoute({this.openPromoId = -1});

  @override
  _PromoRouteState createState() => _PromoRouteState();
}

class _PromoRouteState extends State<PromoRoute> {
  PromoStore _store;

  @override
  void initState() {
    _store ??= sl.get<PromoStore>();
    super.initState();
    _store.getPromoList();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4.0),
      child: Observer(
        builder: (_) {
          if (_store.errorMessage != null && _store.errorMessage.isNotEmpty) {
            return ToastMessage(message: _store.errorMessage);
          }
          switch (_store.state) {
            case PromoStoreState.loading:
              return LoadingWidget();
            case PromoStoreState.loaded:
              return PromoDisplay(_store.promos,
                  showPromoId: widget.openPromoId);
            default:
              return SizedBox.shrink();
          }
        },
      ),
    );
  }
}
