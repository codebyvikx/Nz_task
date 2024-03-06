import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:timer_count_down/timer_controller.dart';
import 'package:timer_count_down/timer_count_down.dart';

class RecordingPage extends StatefulWidget {
  const RecordingPage({super.key});

  @override
  State<RecordingPage> createState() => _RecordingPageState();
}

class _RecordingPageState extends State<RecordingPage> {
  final CountdownController _controller = CountdownController(autoStart: false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const BackButton(
            color: Colors.black,
          ),
          backgroundColor: Colors.purple,
          title: const Text(
            "Recording",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        backgroundColor: Colors.black,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const CircleAvatar(
                backgroundColor: Colors.white,
                maxRadius: 120,
                child: Icon(
                  Icons.mic,
                  size: 200,
                  color: Colors.red,
                ),
              ),
              const SizedBox(
                height: 80,
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    // Start
                    ElevatedButton(
                      child: const Text('Start'),
                      onPressed: () {
                        _controller.start();
                      },
                    ),
                    // Pause
                    ElevatedButton(
                      child: const Text('Pause'),
                      onPressed: () {
                        _controller.pause();
                      },
                    ),
                    // Resume
                    ElevatedButton(
                      child: const Text('Resume'),
                      onPressed: () {
                        _controller.resume();
                      },
                    ),
                    // Stop
                    ElevatedButton(
                      child: const Text('Restart'),
                      onPressed: () {
                        _controller.restart();
                      },
                    ),
                  ],
                ),
              ),
              Countdown(
                controller: _controller,
                seconds: 15,
                build: (_, double time) => Text(
                  time.toString(),
                  style: const TextStyle(fontSize: 100, color: Colors.white),
                ),
                interval: const Duration(milliseconds: 100),
                onFinished: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Recording Done is done!'),
                    ),
                  );
                },
              ),
            ],
          ),
        ));
  }
}
