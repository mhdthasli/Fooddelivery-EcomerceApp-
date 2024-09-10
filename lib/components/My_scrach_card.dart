import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:scratcher/scratcher.dart';
import 'package:confetti/confetti.dart';
import 'package:projecttask/components/scrachcard_provider.dart';
import 'package:get/get.dart';
import '../pages/home_page.dart';


class ScratchCardDemo extends StatefulWidget {
  @override
  _ScratchCardDemoState createState() => _ScratchCardDemoState();
}

class _ScratchCardDemoState extends State<ScratchCardDemo> {
  double _scratchProgress = 0; // To track scratch progress
  late ConfettiController _confettiController;
  Color _currentColor = Colors.red; // Initial color

  @override
  void initState() {
    super.initState();
    _confettiController = ConfettiController(duration: const Duration(seconds: 3));
  }

  @override
  void dispose() {
    _confettiController.dispose();
    super.dispose();
  }

  // Function to calculate the color based on the scratch progress
  Color _getColorFromProgress(double progress) {
    return Color.lerp(Colors.black87, Colors.teal, progress)!;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
        centerTitle: true,
        title: const Text('Scratch Card'),
      ),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Scratcher(
                brushSize: 50, // Scratch brush size
                threshold: 50, // 50% scratch threshold
                color: Colors.grey, // Cover color
                onThreshold: () {
                  setState(() {
                    context.read<ScratchCardProvider>().markAsScratched();
                    _confettiController.play(); // Trigger celebration
                    // Navigate to HomePage after scratch card is completed
                    Future.delayed(Duration(seconds: 5), () {
                      Get.offAll(() => HomePage()); // Replace current page with HomePage
                    });
                  });
                },
                onChange: (value) {
                  setState(() {
                    _scratchProgress = value / 100; // Normalize to 0-1
                    _currentColor = _getColorFromProgress(_scratchProgress); // Update color based on progress
                  });
                },
                child: Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    color: _currentColor, // Color changes based on swipe progress
                    borderRadius: BorderRadius.circular(20), // Circular border
                  ),
                  child: const Center(
                    child: Text(
                      'You won 99%',
                      style: TextStyle(fontSize: 24, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
            // Confetti widget for celebration
            Align(
              alignment: Alignment.topCenter,
              child: ConfettiWidget(
                confettiController: _confettiController,
                blastDirectionality: BlastDirectionality.explosive,
                shouldLoop: false,
                colors: const [
                  Colors.green,
                  Colors.blue,
                  Colors.pink,
                  Colors.orange,
                  Colors.purple,
                  Colors.teal,
                  Colors.black87,
                  Colors.yellow,
                  Colors.red,
                  Colors.grey,
                  Colors.white,
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
