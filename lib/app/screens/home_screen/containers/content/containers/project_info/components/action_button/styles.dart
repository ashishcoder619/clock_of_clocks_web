// Copyright 2019 Egor Belibov. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import '../../../../../../../../g_models/device_type.dart';
import '../../../../../../../../g_styles/fonts.dart';

TextStyle buttonTextStyle(BuildContext context, DeviceType deviceType) {
  assert(context != null);

  switch (deviceType) {
    case DeviceType.desktopBig:
    case DeviceType.desktop:
    case DeviceType.mobile:
      return TextStyle(
        fontFamily: defaultFontFamily,
        fontSize: 18,
        fontWeight: FontWeight.w700,
        color: Colors.white,
      );
    case DeviceType.mobileMini:
      return TextStyle(
        fontFamily: defaultFontFamily,
        fontSize: 14,
        fontWeight: FontWeight.w700,
        color: Colors.white,
      );
    default:
      return null;
  }
}

double buttonWidth(DeviceType deviceType) {
  assert(deviceType != null);

  switch (deviceType) {
    case DeviceType.mobile:
      return 300;
    case DeviceType.mobileMini:
      return 255;
    case DeviceType.desktop:
    case DeviceType.desktopBig:
    default:
      return null;
  }
}

BorderRadius buttonBorderRadius(DeviceType deviceType) {
  assert(deviceType != null);

  switch (deviceType) {
    case DeviceType.desktopBig:
    case DeviceType.desktop:
      return BorderRadius.only(
        topLeft: Radius.circular(5),
        bottomLeft: Radius.circular(5),
      );
    case DeviceType.mobile:
    case DeviceType.mobileMini:
      return BorderRadius.all(Radius.circular(5));
    default:
      return null;
  }
}

EdgeInsetsGeometry buttonPadding(DeviceType deviceType) {
  assert(deviceType != null);

  switch (deviceType) {
    case DeviceType.desktopBig:
    case DeviceType.desktop:
    case DeviceType.mobile:
      return const EdgeInsets.symmetric(
        vertical: 0,
        horizontal: 55,
      );
    case DeviceType.mobileMini:
      return const EdgeInsets.symmetric(
        vertical: 0,
        horizontal: 20,
      );
    default:
      return null;
  }
}
