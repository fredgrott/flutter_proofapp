// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.



// ignore_for_file: avoid_redundant_argument_values

import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_proofapp/src/play_store_app.dart';
import 'package:flutter_proofapp/src/screen_modes/play_store_screen_shot_modes_plugin.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => PlayStoreApp(), // Wrap your app
      tools: [
        ...DevicePreview.defaultTools,
        playStoreScreenShotModesPlugin,
      ],
      defaultDevice: Devices.android.onePlus8Pro,
      storage: DevicePreviewStorage.none(),
    ),
  );
}
