import 'dart:io' show File;

import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ty_mobile/core/internal/global.dart';
import 'package:flutter_ty_mobile/core/internal/themes.dart';
import 'package:flutter_ty_mobile/mylogger.dart';

/// Check if image [url] has cached file.
/// If url image has been cached, return image's [File] else return url.
Future<dynamic> checkCachedImage(String url) async {
//    print('checking cached image: $url');
  return await getCachedImageFile(url).then((file) async {
    if (file == null) return url;
    return await file.exists().then((exist) {
      if (exist)
        return file;
      else
        return url;
    });
  });
}

Future<Widget> networkImageWidget(
  String url, {
  bool fillContainer = false,
  double imgScale = 1.0,
  bool debug = false,
  Color imgColor,
}) async {
  String imageUrl =
      '${Global.CURRENT_SERVICE}$url'.replaceAll('//images/', '/images/');
  final image = await Future.value(checkCachedImage(imageUrl)).then((item) {
    if (debug) print('image: $imageUrl, item: ${item.runtimeType}');
    if (item is File) {
//      print('file state: ${item.statSync()}, length: ${item.lengthSync()}');
      return Image.file(
        item,
        fit: fillContainer ? BoxFit.fill : BoxFit.contain,
        scale: imgScale,
        color: imgColor,
      );
    } else {
      return ExtendedImage.network(
        imageUrl,
        fit: fillContainer ? BoxFit.fill : BoxFit.contain,
        scale: imgScale,
        color: imgColor,
        loadStateChanged: (ExtendedImageState state) {
          switch (state.extendedImageLoadState) {
            case LoadState.completed:
              return state.completedWidget;
            case LoadState.failed:
              return Icon(Icons.broken_image, color: Themes.iconColorDark);
            default:
              return null;
          }
        },
      );
    }
  });
  return image;
}

FutureBuilder networkImageBuilder(
  String url, {
  bool fill = false,
  double imgScale = 1.0,
  Color imgColor,
  bool roundCorner = false,
  bool debug = false,
}) {
  return FutureBuilder(
    future: networkImageWidget(
      url,
      fillContainer: fill,
      imgScale: imgScale,
      imgColor: imgColor,
      debug: debug,
    ),
    builder: (context, snapshot) {
      if (snapshot.connectionState == ConnectionState.done &&
          !snapshot.hasError) {
        if (roundCorner)
          return ClipRRect(
              borderRadius: BorderRadius.circular(6.0), child: snapshot.data);
        else
          return snapshot.data;
      } else if (snapshot.hasError) {
        MyLogger.warn(msg: 'network image builder error: ${snapshot.error}');
        return Icon(Icons.broken_image, color: Themes.iconColorDark);
      } else {
        return SizedBox.shrink();
      }
    },
  );
}
