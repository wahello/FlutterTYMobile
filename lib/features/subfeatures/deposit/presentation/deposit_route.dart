import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_ty_mobile/features/general/bloc_widget_export.dart';

import '../../../route_page_export.dart' show sl;
import 'state/deposit_store.dart';
import 'widgets/deposit_display.dart';

/// Main View of [Router.promoRoute]
///@author H.C.CHIANG
///@version 2020/3/12
class DepositRoute extends StatefulWidget {
  @override
  _DepositRouteState createState() => _DepositRouteState();
}

class _DepositRouteState extends State<DepositRoute> {
  DepositStore _store;

  @override
  void initState() {
    _store ??= sl.get<DepositStore>();
    super.initState();
    _store.getPaymentType();
    _store.getPaymentPromo();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4.0),
      child: Observer(
        builder: (_) {
          if (_store.errorMessage != null && _store.errorMessage.isNotEmpty) {
            return ToastError(message: _store.errorMessage);
          }
          switch (_store.state) {
            case DepositStoreState.loading:
              return LoadingWidget();
            case DepositStoreState.loaded:
              return DepositDisplay(store: _store);
            default:
              return SizedBox.shrink();
          }
        },
      ),
    );
  }
}
