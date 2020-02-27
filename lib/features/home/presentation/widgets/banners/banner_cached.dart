import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ty_mobile/features/home/domain/entity/banner_entity.dart';
import 'package:flutter_ty_mobile/features/home/presentation/bloc/bloc_banner.dart';

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
