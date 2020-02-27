import 'dart:core';

import 'package:flutter/material.dart' show MediaQueryData, Orientation;

class Device {
  MediaQueryData _mediaQueryData;
  double _screenWidth;
  double _screenHeight;

  Device(this._mediaQueryData, this._screenWidth, this._screenHeight);

  @override
  String toString() {
    return 'width=$_screenWidth height=$_screenHeight';
  }

  /// device's current orientation
  Orientation get orientation => _mediaQueryData.orientation;

  /// screen's ratio = width / height
  double get ratio => _mediaQueryData.size.aspectRatio;

  /// screen's ratio = height / width
  double get ratioHor => _mediaQueryData.size.flipped.aspectRatio;

  /// device's width
  double get width => _screenWidth;

  /// device's height
  double get height => _screenHeight;
}
