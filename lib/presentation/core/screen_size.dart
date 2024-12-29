import 'dart:ui';
import 'package:flutter/material.dart';

FlutterView view = WidgetsBinding.instance.platformDispatcher.views.first;
Size screenSize = view.physicalSize / view.devicePixelRatio;
