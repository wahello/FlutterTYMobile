import 'package:after_layout/after_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ty_mobile/core/internal/font_size.dart';
import 'package:flutter_ty_mobile/core/internal/themes.dart';
import 'package:flutter_ty_mobile/features/general/widgets/cached_network_image.dart';
import 'package:flutter_ty_mobile/features/promo/data/models/promo_category.dart';
import 'package:flutter_ty_mobile/features/promo/data/models/promo_freezed.dart';
import 'package:flutter_ty_mobile/mylogger.dart';

import 'promo_detail.dart';
import 'promo_display_view.dart';
import 'promo_list_view.dart';

/// Display promo category and items
/// [promos] = data from repository
/// [showPromoId] = promo's id when home page banner was clicked
class PromoDisplay extends StatefulWidget {
  final List<PromoEntity> promos;
  final int showPromoId;

  const PromoDisplay(this.promos, {this.showPromoId = -1});

  @override
  _PromoDisplayState createState() => _PromoDisplayState();
}

class _PromoDisplayState extends State<PromoDisplay>
    with SingleTickerProviderStateMixin, AfterLayoutMixin {
  TabController _tabController;
  PageController _pageController;

  List<PromoCategoryEnum> categories = [
    PromoCategoryEnum.fish,
    PromoCategoryEnum.slot,
    PromoCategoryEnum.live,
    PromoCategoryEnum.sport,
    PromoCategoryEnum.lottery,
    PromoCategoryEnum.other
  ];

  @override
  void initState() {
    categories.removeWhere((element) =>
        widget.promos
            .any((promo) => promo.postCategoryId == element.value.id) ==
        false);
    categories.insert(0, PromoCategoryEnum.all);
//    print('promo categories map: $categories');
    super.initState();
    _tabController = TabController(length: categories.length, vsync: this);
    _pageController = PageController();
  }

  @override
  void dispose() {
    try {
      if (_tabController != null) _tabController.dispose();
    } catch (e) {
      MyLogger.warn(msg: '${e.runtimeType}', tag: "PromoDisplay", error: e);
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        /* Category Tab Bar */
        Container(
          height: 74, // here the desired height
          padding: const EdgeInsets.only(right: 6.0, left: 5.0),
          child: TabBar(
            unselectedLabelColor: Colors.white60,
            labelColor: Colors.white,
            labelStyle: TextStyle(fontSize: 16.0),
            labelPadding: const EdgeInsets.only(top: 4.0),
            indicatorWeight: 3.0,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorPadding: const EdgeInsets.symmetric(horizontal: 4.0),
            controller: _tabController,
            isScrollable: true,
            /* Category Tabs */
            tabs: categories.map((c) {
              return Container(
                width: 56,
                decoration: BoxDecoration(color: Themes.defaultAppbarColor),
                margin:
                    const EdgeInsets.symmetric(vertical: 2.0, horizontal: 4.0),
                child: Tab(
                  icon: networkImageBuilder(
                    c.value.iconUrl,
                    imgScale: (c.value.id == 0 || c.value.id == 6) ? 6.0 : 3.0,
                  ),
                  iconMargin: EdgeInsets.only(top: 2.0, bottom: 2.0),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 3.0),
                    child: Text(
                      c.value.label,
                      style: TextStyle(fontSize: FontSize.NORMAL.value),
                    ),
                  ),
                ),
              );
            }).toList(),
            onTap: (index) {
              _pageController.jumpToPage(index);
            },
          ),
        ),
        /* Promo List Content */
        Expanded(
          child: PromoDisplayView(
            pageController: _pageController,
            tabController: _tabController,
            children: categories.map((c) {
              return PromoListView(
                category: c,
                list: (c.value.id == 0)
                    ? widget.promos
                    : widget.promos
                        .where(
                            (element) => element.postCategoryId == c.value.id)
                        .toList(),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }

  @override
  void afterFirstLayout(BuildContext context) async {
    print('open promo id: ${widget.showPromoId}');
    // show Promo Detail if id is specified
    if (widget.showPromoId != -1) {
      Future.delayed(Duration(milliseconds: 500), () {
        var promo = widget.promos
            .firstWhere((element) => element.id == widget.showPromoId);
        print('debug show promo on home image click: $promo');
        if (promo != null) {
          showDialog(
              context: context,
              barrierDismissible: false,
              builder: (context) => new PromoDetail(promo));
        }
      });
    }
  }
}
