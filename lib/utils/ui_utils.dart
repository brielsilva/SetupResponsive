import 'package:flutter/cupertino.dart';
import 'package:responsivesetup/enums/device_types.dart';

DeviceTypes getDeviceTypes(MediaQueryData mediaQuery) {
  var orientation = mediaQuery.orientation;

  double deviceWidth = 0;

  if (orientation == Orientation.landscape) {
    deviceWidth = mediaQuery.size.width;
  } else {
    deviceWidth = mediaQuery.size.width;
  }

  if (deviceWidth > 950) {
    return DeviceTypes.Desktop;
  } else if (deviceWidth > 600) {
    return DeviceTypes.Tablet;
  }

  return DeviceTypes.Mobile;
}
