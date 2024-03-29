import 'dart:async';
import 'package:flutter/material.dart';

class Debounce {
  Debounce(this.duration);
  final Duration duration;
  Timer? _timer;

  void run(VoidCallback action) {
    _timer?.cancel();
    _timer = Timer(duration, action);
  }
}