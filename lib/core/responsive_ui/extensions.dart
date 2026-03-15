import 'package:notes/core/responsive_ui/dimensions.dart';

extension Extensions on num {
  // get height
  get h => Dimensions.deviceHeightPercentage() * this;

  // get width
  get w => Dimensions.deviceWidthPercentage() * this;

  // get shortest side
  get sp => Dimensions.deviceShortestSidePercentage() * this;
}
