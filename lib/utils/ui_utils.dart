import 'package:flutter/cupertino.dart';
import 'package:responsivesetup/enums/device_types.dart';

DeviceTypes getDeviceTypes(MediaQueryData mediaQuery) {
  

  double deviceWidth = mediaQuery.size.shortestSide;
  if (deviceWidth > 950) {
    return DeviceTypes.Desktop;
  } else if (deviceWidth > 600) {
    return DeviceTypes.Tablet;
  }

  return DeviceTypes.Mobile;
}
