import 'package:flutter/material.dart';
import 'package:flutter_ty_mobile/core/internal/local_strings.dart';
import 'package:flutter_ty_mobile/features/promo/data/models/promo_freezed.dart'
    show PromoEntity;
import 'package:flutter_ty_mobile/features/promo/presentation/widgets/promo_detail.dart';

import '../../../resource_export.dart'
    show FontSize, Themes, networkImageBuilder;

/// View for [PromoEntity]
/// [promo] = view's data
class PromoListItem extends StatelessWidget {
  final PromoEntity promo;

  PromoListItem(this.promo);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(width: 8.0, color: Themes.defaultDisabledColor),
        borderRadius: const BorderRadius.all(const Radius.circular(8.0)),
        color: Themes.defaultDisabledColor,
      ),
      margin: const EdgeInsets.all(6.0),
      child: Container(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            /* Promo Image */
            networkImageBuilder(
              promo.bannerMobile,
              fill: true,
              imgScale: 0.9,
              roundCorner: true,
            ),
            /* Promo Text*/
            Padding(
              padding: const EdgeInsets.only(top: 6.0, bottom: 2.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: Text(
                      promo.name,
                      style: TextStyle(fontSize: FontSize.SUBTITLE.value),
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.start,
                    ),
                  ),
                  GestureDetector(
                    child: Text(localeStr.promoDetailText),
                    onTap: () {
                      print('clicked promo: ${promo.name}');
                      showDialog(
                          context: context,
                          barrierDismissible: false,
                          builder: (context) => new PromoDetail(promo));
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
