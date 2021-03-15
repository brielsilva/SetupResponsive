import 'package:flutter/material.dart';
import 'package:responsivesetup/enums/device_types.dart';

class SizingInformation {
  static const Size defaultSize = Size(360, 690);

  final Orientation orientation;

  final DeviceTypes screenType;

  final Size screenSize;

  final Size localWidgetSize;

  final Size uiDesign;
/* 
  SizingInformation._();

  factory SizingInformation(){
    return _instance;
  }

  static void init(

  ) */

  SizingInformation(
      {this.orientation,
      this.screenSize,
      this.screenType,
      this.localWidgetSize,
      this.uiDesign = defaultSize});

  double get scaleWidth => screenSize.width / uiDesign.width;

  double get scaleHeight => screenSize.height / uiDesign.height;

  setHeight(int height){
    return height * scaleHeight;
  }

  setWidth(int width){
    return width * scaleWidth;
  }

  @override
  String toString() {
    return 'Orientation: $orientation DeviceTypes: $screenType $scaleHeight';
  }
}
