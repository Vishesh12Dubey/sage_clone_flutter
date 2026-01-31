import 'package:flutter/material.dart';
import 'package:animated_background/animated_background.dart';

class SmartPage extends StatelessWidget {
  const SmartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GradientBackground(
        child: ParticleBackground(
          child: RegistrationPage(),
        ),
      ),
    );
  }
}

class RegistrationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent, // so we can see animation behind
      appBar: AppBar(
        title: Text("Registration Page"),
        centerTitle: true,
        backgroundColor: Colors.black.withOpacity(0.6),
      ),
      body: Center(
        child: Container(
          width: 800,
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.85),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _inputField("Full Name"),
              _inputField("Username"),
              _inputField("Email"),
              _inputField("Phone Number"),
              _inputField("Password", obscure: true),
              _inputField("Confirm Password", obscure: true),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(onPressed: () {}, child: Text("Register")),
                  SizedBox(width: 20),
                  ElevatedButton(onPressed: () {}, child: Text("Cancel")),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _inputField(String hint, {bool obscure = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: SizedBox(
        width: 400,
        child: TextField(
          obscureText: obscure,
          decoration: InputDecoration(
            hintText: hint,
            border: OutlineInputBorder(),
          ),
        ),
      ),
    );
  }
}

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
    _controller = AnimationController(
        vsync: this, duration: const Duration(seconds: 6))
      ..repeat(reverse: true);
    _color1 = ColorTween(begin: Colors.purple, end: Colors.orange)
        .animate(_controller);
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
