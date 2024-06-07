import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_ninjas_2024/component/clock_theme.dart';

class TinyClock extends StatefulWidget {
  const TinyClock({super.key});

  @override
  State<TinyClock> createState() => _TinyClockState();
}

class _TinyClockState extends State<TinyClock> {
  Timer? _timer;

  var _seconds = 0;
  Duration get _duration => Duration(seconds: _seconds);
  var _isTicking = false;

  void _pause() {
    _timer?.cancel();
  }

  void _resume() {
    _timer = Timer.periodic(const Duration(seconds: 1), (_) {
      setState(() {
        _seconds++;
      });
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = ClockTheme.of(context);
    final minutes = _duration.inMinutes.toString().padLeft(2, '0');
    final seconds = (_duration.inSeconds % 60).toString().padLeft(2, '0');
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              _isTicking = !_isTicking;
            });
            _isTicking ? _resume() : _pause();
          },
          child: Container(
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(
                  color: theme.buttonColor,
                  width: 4,
                ),
                left: BorderSide(
                  color: theme.buttonColor,
                  width: 4,
                ),
                right: BorderSide(
                  color: theme.buttonColor,
                  width: 4,
                ),
              ),
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(100),
              ),
              color: _isTicking ? theme.buttonColor : null,
            ),
            width: 80,
            height: 24,
          ),
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: theme.borderColor,
              width: 4,
            ),
            borderRadius: BorderRadius.circular(16),
            color: theme.backgroundColor,
          ),
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
          child: Center(
            child: Text(
              '$minutes:$seconds',
              style: TextStyle(color: theme.textColor),
            ),
          ),
        ),
      ],
    );
  }
}
