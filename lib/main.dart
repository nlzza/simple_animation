import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

void main() => runApp(const MaterialApp(home: SimpleAssetAnimation()));

/// Basic example playing a Rive animation from a packaged asset.
class SimpleAssetAnimation extends StatelessWidget {
  const SimpleAssetAnimation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Simple Animation'),
      ),
      body: const Center(
        child: SizedBox(
          height: 200,
          width: 200,
          child: RiveAnimation.asset(
            'lib/assets/flying_car.riv',
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
