import 'package:flutter/material.dart';
import 'package:flutter_ty_mobile/core/internal/device.dart';

class DeviceTestWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var device = Device(MediaQuery.of(context),
        MediaQuery.of(context).size.width, MediaQuery.of(context).size.height);
    print('Device Size: $device');
    print('Device Ratio: ${device.ratio}');
    print('Device Ratio Hor: ${device.ratioHor}');
    print('Device Orientation: ${device.orientation}');
    return Container();
  }
}

