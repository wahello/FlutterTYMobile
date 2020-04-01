import 'package:after_layout/after_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ty_mobile/core/internal/global.dart';
import 'package:flutter_ty_mobile/core/internal/local_strings.dart';
import 'package:flutter_ty_mobile/features/general/toast_widget_export.dart';
import 'package:flutter_ty_mobile/features/route_page_export.dart';
import 'package:flutter_ty_mobile/features/subfeatures/deposit/data/model/deposit_result.dart';
import 'package:mobx/mobx.dart';

import '../../data/entity/payment_enum.dart';
import '../state/deposit_store.dart';
import 'deposit_display_grid.dart';
import 'payment_content.dart';

class DepositDisplay extends StatefulWidget {
  final DepositStore store;

  DepositDisplay({this.store});

  @override
  _DepositDisplayState createState() => _DepositDisplayState();
}

class _DepositDisplayState extends State<DepositDisplay> with AfterLayoutMixin {
  List<ReactionDisposer> _disposers;
  GlobalKey<PaymentContentState> _contentKey;
  Function toastDismiss;

  Widget _topWidget;

  @override
  void initState() {
    _contentKey = new GlobalKey();
    super.initState();
  }

  @override
  void didChangeDependencies() {
    print('didChangeDependencies');
    super.didChangeDependencies();
    _disposers ??= [
      /* Reaction on page data changed */
      reaction(
        // Observe in page
        // Tell the reaction which observable to observe
        (_) => widget.store.paymentTypes,
        // Run some logic with the content of the observed field
        (list) => updateContent(list[0]),
      ),
      /* Reaction on deposit action */
      reaction(
        // Observe in page
        // Tell the reaction which observable to observe
        (_) => widget.store.waitForDepositResult,
        // Run some logic with the content of the observed field
        (bool wait) {
          print('deposit display wait result: $wait');
          if (wait) {
            toastDismiss = FLToast.showLoading(
              text: localeStr.messageWait,
            );
          } else if (toastDismiss != null) {
            toastDismiss();
            toastDismiss = null;
          }
        },
      ),
      /* Reaction on deposit result changed */
      reaction(
        // Observe in page
        // Tell the reaction which observable to observe
        (_) => widget.store.depositResult,
        // Run some logic with the content of the observed field
        (DepositResult result) {
          print('deposit display result: $result');
          if (result == null) return;
          if (result.code == 0 && result.ledger != null) {
            FLToast.showSuccess(
              text: localeStr.depositMessageSuccessLocal(result.ledger),
              showDuration: ToastDuration.DEFAULT.value,
            );
          } else if (result.code == 0 && result.url != null) {
            print('deposit display url: ${result.url}');
            RouterNavigate.navigateToPage(
              RoutePage.depositWeb,
              arg: result.url,
            );
          } else {
            FLToast.showError(
              text: localeStr.depositMessageFailed,
              showDuration: ToastDuration.DEFAULT.value,
            );
          }
        },
      ),
    ];
  }

  @override
  void dispose() {
    _disposers.forEach((d) => d());
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          _topWidget ?? SizedBox.shrink(),
          Expanded(
            child: ConstrainedBox(
              constraints: BoxConstraints.tightFor(
                width: Global.device.width - 12,
              ),
              child: PaymentContent(
                key: _contentKey,
                depositCall: widget.store.sendRequest,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPaymentButtons() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 2.0),
      constraints: BoxConstraints.tightFor(
        width: Global.device.width - 16,
      ),
      child: DepositDisplayGrid(
        types: widget.store.paymentTypes,
        pressedCallback: (PaymentEnum type) => updateContent(type),
      ),
    );
  }

  void updateContent(PaymentEnum type) {
    print('updating deposit content widget...${type.title}');
    setState(() {
      _topWidget ??= _buildPaymentButtons();
      _contentKey.currentState.update(
        type: type,
        data: widget.store.paymentMap[type.typeKey],
        promos: widget.store.promoMap[(type == PaymentEnum.bank) ? 1 : 2],
      );
    });
  }

  @override
  void afterFirstLayout(BuildContext context) {
    widget.store.generateEnumList();
  }
}
