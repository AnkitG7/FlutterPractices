import 'dart:async';
import 'package:flutter/material.dart';

class StopwatchPage extends StatefulWidget {
  const StopwatchPage({super.key});

  @override
  _StopwatchPageState createState() => _StopwatchPageState();
}

class _StopwatchPageState extends State<StopwatchPage> {
  int _minutes = 0;
  int _seconds = 0;
  bool _isRunning = false;
  late Timer _timer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stopwatch'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '$_minutes:${_seconds.toString().padLeft(2, '0')}',
              style: const TextStyle(fontSize: 60.0),
            ),
            const SizedBox(height: 20.0),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ElevatedButton(
                    onPressed: _isRunning ? null : () => _setMinutes(1),
                    child: const Text('1 minutes'),
                  ),
                  const SizedBox(width: 10.0),
                  ElevatedButton(
                    onPressed: _isRunning ? null : () => _setMinutes(2),
                    child: const Text('2 minutes'),
                  ),
                  const SizedBox(width: 10.0),
                  ElevatedButton(
                    onPressed: _isRunning ? null : () => _setMinutes(5),
                    child: const Text('5 minutes'),
                  ),
                  const SizedBox(width: 10.0),
                  ElevatedButton(
                    onPressed: _isRunning ? null : () => _setMinutes(10),
                    child: const Text('10 minutes'),
                  ),
                  const SizedBox(width: 10.0),
                  ElevatedButton(
                    onPressed: _isRunning ? null : () => _setMinutes(15),
                    child: const Text('15 minutes'),
                  ),
                  ElevatedButton(
                    onPressed: _isRunning ? null : () => _setMinutes(30),
                    child: const Text('30 minutes'),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  onPressed: _isRunning ? _stopTimer : _startTimer,
                  child: Text(_isRunning ? 'Stop' : 'Start'),
                ),
                const SizedBox(width: 10.0),
                ElevatedButton(
                  onPressed: _resetTimer,
                  child: const Text('Reset'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _setMinutes(int minutes) {
    setState(() {
      _minutes = minutes;
      _seconds = 0;
      _isRunning = false;
    });
  }

  void _startTimer() {
    if (_minutes > 0) {
      setState(() {
        _isRunning = true;
      });
      _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
        setState(() {
          if (_seconds == 0) {
            if (_minutes == 0) {
              _isRunning = false;
              timer.cancel();
            } else {
              _minutes--;
              _seconds = 59;
            }
          } else {
            _seconds--;
          }
        });
      });
    }
  }

  void _stopTimer() {
    setState(() {
      _isRunning = false;
      _timer.cancel();
    });
  }

  void _resetTimer() {
    setState(() {
      _minutes = 0;
      _seconds = 0;
      _isRunning = false;
      _timer.cancel();
    });
  }
}
