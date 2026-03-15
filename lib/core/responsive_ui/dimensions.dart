import 'package:flutter/widgets.dart';

class Dimensions {
  static final _mediaQueryData = MediaQueryData.fromView(
    WidgetsBinding.instance.platformDispatcher.views.first,
  );

  // set height
  static double deviceHeightPercentage() => _mediaQueryData.size.height / 1000;

  // set width

  static double deviceWidthPercentage() => _mediaQueryData.size.width / 500;

  // shortestSide
  static double deviceShortestSidePercentage() =>
      _mediaQueryData.size.shortestSide / 500;
}
