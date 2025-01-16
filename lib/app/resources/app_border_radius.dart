import 'package:flutter/widgets.dart';

class AppBorderRadius {
  static BorderRadius point = BorderRadius.circular(8);

  /// ******** Button rounded ************
  ///
  static BorderRadius buttonRounded4 = BorderRadius.circular(4);
  static BorderRadius buttonRounded5 = BorderRadius.circular(5);
  static BorderRadius buttonRounded8 = BorderRadius.circular(8);

  /// ******** Bottom sheet ************

  static const BorderRadius bottomSheet16 = BorderRadius.vertical(
    top: Radius.circular(16),
  );
  static const BorderRadius bottomSheet12 = BorderRadius.vertical(
    top: Radius.circular(12),
  );

  static const BorderRadius bottomSheet20 = BorderRadius.vertical(
    top: Radius.circular(20),
  );
  static const BorderRadius bottomSheet24 = BorderRadius.vertical(
    top: Radius.circular(24),
  );

  /// ******** Card ************

  static BorderRadius cardRounded4 = BorderRadius.circular(4);
  static BorderRadius cardRounded10 = BorderRadius.circular(10);

  static BorderRadius cardRounded15 = const BorderRadius.only(
    bottomLeft: Radius.circular(15.01), // FLUTTER BUG FIX
    topLeft: Radius.circular(16),
    bottomRight: Radius.circular(15),
    topRight: Radius.circular(15),
  );

  static BorderRadius cardRounded25 = BorderRadius.circular(25);
  static BorderRadius cardRounded30 = BorderRadius.circular(30);

  /// Has all rounded corners except bottom left
  static const BorderRadius cardRoundedLeftBottomDrop15 = BorderRadius.only(
    topLeft: Radius.circular(15),
    topRight: Radius.circular(15),
    bottomRight: Radius.circular(15),
  );

  /// Has rounded top left and bottom right corners
  static const BorderRadius cardHalfLeaf15 = BorderRadius.only(
    topLeft: Radius.circular(15),
    bottomRight: Radius.circular(15),
    topRight: Radius.circular(15),
  );

  /// Has rounded top right and bottom left corners
  static const BorderRadius cardLeafRight15 = BorderRadius.only(
    topRight: Radius.circular(15),
    bottomLeft: Radius.circular(15),
  );

  /// Has rounded top right and bottom right corners
  static const BorderRadius cardRight15 = BorderRadius.only(
    topRight: Radius.circular(15),
    bottomRight: Radius.circular(15),
  );

  /// Has rounded top left and bottom right corners
  static const BorderRadius cardLeaf15 = BorderRadius.only(
    topLeft: Radius.circular(15),
    bottomRight: Radius.circular(15),
    topRight: Radius.circular(15),
  );

  /// ******** Alert ************

  static BorderRadius alert4 = BorderRadius.circular(4);
  static BorderRadius alert14 = BorderRadius.circular(14);

  /// ******** Other ************

  static BorderRadius productMoreInfo = BorderRadius.circular(15);
  static BorderRadius search = BorderRadius.circular(16);
  static BorderRadius chipColorfull = BorderRadius.circular(50);
  static BorderRadius textField = BorderRadius.circular(8);
  static const BorderRadius helpCard = BorderRadius.vertical(bottom: Radius.circular(16));

  static const BorderRadius cardBorders = BorderRadius.only(
    topLeft: Radius.circular(15),
    topRight: Radius.circular(15),
    bottomRight: Radius.circular(15),
  );
}
