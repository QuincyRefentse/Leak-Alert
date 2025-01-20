import 'package:flutter/material.dart';
import 'package:leakalert/utils/constants/sizes.dart';
// Adjust the path based on your project structure

class TSpacingStyle {
  static const EdgeInsetsGeometry paddingWithAppBarHeight = EdgeInsets.only(
    top: TSizes.appBarHeight,
    left: TSizes.defaultSpace,
    bottom: TSizes.defaultSpace,
    right: TSizes.defaultSpace,
  );
}
