import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ty_mobile/features/home/data/models/banner_freezed.dart'
    show BannerEntity;
import 'package:flutter_ty_mobile/features/home/presentation/bloc/banner/bloc_banner_export.dart';

/// Get each [BannerEntity]'s image from network or local file
/// [GetBannerImageEvent] will be process in [HomeBannerBloc]
/// @author H.C.CHIANG
/// @version 2019/12/27
class BannerCached extends StatefulWidget {
  final List<BannerEntity> banners;

  BannerCached({
    Key key,
    @required this.banners,
  }) : super(key: key);

  @override
  _BannerCachedState createState() => _BannerCachedState();
}

class _BannerCachedState extends State<BannerCached> {
  @override
  void initState() {
//    print('BannerCached data: ${widget.banners}}');
    super.initState();
    // post bloc event
    BlocProvider.of<HomeBannerBloc>(context).add(GetBannerImageEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(),
    );
  }
}
