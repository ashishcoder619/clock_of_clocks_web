// Copyright 2019 Egor Belibov. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/widgets.dart';

import '../../../../../../../../g_models/device_type.dart';
import '../../../../../../../../g_styles/colors.dart';
import '../../../../../../../../g_styles/fonts.dart';

TextStyle titleTextStyle(BuildContext context, DeviceType deviceType) {
  assert(context != null);
  assert(deviceType != null);

  switch (deviceType) {
    case DeviceType.desktopBig:
    case DeviceType.desktop:
      return TextStyle(
        fontFamily: defaultFontFamily,
        fontSize: 120,
        fontWeight: FontWeight.w900,
        color: themeBasedColor(context, PaletteColor.primaryColor),
      );
    case DeviceType.mobile:
      return TextStyle(
        fontFamily: defaultFontFamily,
        fontSize: 42,
        fontWeight: FontWeight.w900,
        color: themeBasedColor(context, PaletteColor.primaryColor),
      );
    case DeviceType.mobileMini:
      return TextStyle(
        fontFamily: defaultFontFamily,
        fontSize: 34,
        fontWeight: FontWeight.w900,
        color: themeBasedColor(context, PaletteColor.primaryColor),
      );
    default:
      return null;
  }
}

TextStyle titleHighlightedTextStyle(BuildContext context) {
  assert(context != null);

  return TextStyle(
    fontFamily: defaultFontFamily,
    color: themeBasedColor(context, PaletteColor.tertiaryColor),
  );
}
