import 'package:flutter/material.dart';
import 'package:responsivesetup/ui/sizing_information.dart';
import 'package:responsivesetup/utils/ui_utils.dart';

class InfoDeviceWidget extends StatelessWidget {
  final Widget Function(
      BuildContext context, SizingInformation sizingInformation) builder;
  const InfoDeviceWidget({Key key, this.builder}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    return LayoutBuilder(
      builder: (context, boxConstrainst) {
        SizingInformation sizingInformation = SizingInformation(
          orientation: mediaQuery.orientation,
          screenType: getDeviceTypes(mediaQuery),
          screenSize: mediaQuery.size,
          uiDesign: Size(375,812),
        );
        return builder(context, sizingInformation);
      },
    );
  }
}
