import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ty_mobile/core/internal/themes.dart';
import 'package:flutter_ty_mobile/features/route_page_export.dart';
import 'package:flutter_ty_mobile/mylogger.dart';
import 'package:meta/meta.dart' show required;

/// Create a [Carousel] widget to display banner images
/// @author H.C.CHIANG
/// @version 2019/12/27
class BannerDisplay extends StatelessWidget {
  final List<dynamic> images;
  final List<int> promoIds;

  BannerDisplay({
    Key key,
    @required this.images,
    @required this.promoIds,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> list;
    try {
      list = List.castFrom<dynamic, Widget>(images);
    } catch (e) {
      MyLogger.warn(
          msg: 'banner wall image list has exception', tag: 'BannerDisplay');
    }
    if (list == null && list.isEmpty)
      list = [
        Icon(
          Icons.warning,
          color: Themes.defaultErrorColor,
        )
      ];
    return Carousel(
      boxFit: BoxFit.fill,
      images: list,
      dotSize: 3.0,
      dotSpacing: 16.0,
      dotColor: Themes.defaultAccentColor,
      indicatorBgPadding: 4.0,
      dotBgColor: Colors.white12,
      borderRadius: false,
      animationDuration: Duration(milliseconds: 2000),
      autoplayDuration: Duration(seconds: 10),
      onImageTap: (index) {
        var id = promoIds[index];
        print('clicked image $index, promoId: $id');
        if (id != -1) RouterNavigate.navigateToPage(RoutePage.promo, arg: id);
      },
    );
  }
}
