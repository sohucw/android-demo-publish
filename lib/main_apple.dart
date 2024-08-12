import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'app.dart';
import 'flavors.dart';

void main() {
  F.appFlavor = Flavor.APPLE;

  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  
  Timer(const Duration(seconds: 3), () {
     FlutterNativeSplash.remove();
  });
  runApp(App());
}
