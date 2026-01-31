import 'package:flutter/material.dart';
import 'package:animated_background/animated_background.dart';

// Your Ragistrationpage2 goes here (already working as you've built before)

class Ragistrationpage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 800,
        height: 500,
        color: Colors.white.withOpacity(0.8),
        child: Center(
          child: Text(
            "Registration Page Content Here",
            style: TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }
}

// Gradient Background Animation
class GradientBackground extends StatefulWidget {
  final Widget child;

  const GradientBackground({required this.child});

  @override
  _GradientBackgroundState createState() => _GradientBackgroundState();
}

class _GradientBackgroundState extends State<GradientBackground>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Color?> _color1;
  late Animation<Color?> _color2;

  @override
  void initState() {
    super.initState();
    _controller =
    AnimationController(vsync: this, duration: Duration(seconds: 5))
      ..repeat(reverse: true);

    _color1 =
        ColorTween(begin: Colors.purple, end: Colors.orange).animate(_controller);
    _color2 =
        ColorTween(begin: Colors.blue, end: Colors.green).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [_color1.value!, _color2.value!],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: widget.child,
        );
      },
    );
  }
}

// Particle Background Wrapper
class ParticleBackground extends StatefulWidget {
  final Widget child;

  const ParticleBackground({required this.child});

  @override
  _ParticleBackgroundState createState() => _ParticleBackgroundState();
}

class _ParticleBackgroundState extends State<ParticleBackground>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return AnimatedBackground(
      behaviour: RandomParticleBehaviour(
        options: ParticleOptions(
          baseColor: Colors.white,
          spawnOpacity: 0.5,
          opacityChangeRate: 0.25,
          minOpacity: 0.1,
          maxOpacity: 0.4,
          spawnMinSpeed: 10.0,
          spawnMaxSpeed: 100.0,
          spawnMinRadius: 5.0,
          spawnMaxRadius: 15.0,
          particleCount: 40,
        ),
      ),
      vsync: this,
      child: widget.child,
    );
  }
}

// Main App
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      body: GradientBackground(
        child: ParticleBackground(
          child: Ragistrationpage2(),
        ),
      ),
    ),
  ));
}
