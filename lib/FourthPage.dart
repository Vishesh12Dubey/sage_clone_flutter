



import 'package:flutter/material.dart';
import 'package:animated_background/animated_background.dart';

class Fourthpage extends StatefulWidget {
  @override
  _ThirdPageState createState() => _ThirdPageState();
}

class _ThirdPageState extends State<Fourthpage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return GradientBackground(
      child: ParticleBackground(
        vsync: this,
        child: Scaffold(
          backgroundColor: Colors.transparent, // Transparent to see animation
          appBar: AppBar(
            title: Text("App Bar"),
            backgroundColor: Colors.grey,
            centerTitle: true,
            actions: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.add_alarm),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.add_alert),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.add_a_photo_outlined),
              )
            ],
            leading: Icon(Icons.account_circle, size: 60),
          ),
          body: SingleChildScrollView(
            child: Center(
              child: Container(
                width: 1200,
                height: 1500,
                color: Colors.white54,
                child: Column(
                  children: [
                    Text(
                      "पूजा के लिए संपर्क करें",
                      style: TextStyle(fontSize: 40, color: Colors.green),
                    ),
                    Text(
                      "जय श्री महाकाल",
                      style: TextStyle(fontSize: 40, color: Colors.red),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: CircleAvatar(
                            maxRadius: 80,
                            backgroundColor: Colors.red,
                            backgroundImage: AssetImage('law.JPG'),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(200.0),
                          child: CircleAvatar(
                            maxRadius: 80,
                            backgroundColor: Colors.red,
                            backgroundImage: AssetImage('lin.JPG'),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(120.0),
                          child: CircleAvatar(
                            maxRadius: 80,
                            backgroundColor: Colors.red,
                            backgroundImage: AssetImage('law.JPG'),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "Contact No. 6263174110 ",
                      style: TextStyle(fontSize: 30, color: Colors.black),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(40.0),
                          child: Column(
                            children: [
                              Image.asset(
                                'man.JPG',
                                width: 200,
                                height: 200,
                              ),
                              Text(
                                "RAM",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.black),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(40.0),
                          child: Column(
                            children: [
                              Image.asset(
                                'wan.JPG',
                                width: 200,
                                height: 200,
                              ),
                              Text(
                                "SHYAM",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.black),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(40.0),
                              child: Column(
                                children: [
                                  Image.asset(
                                    'logo.JPG',
                                    width: 200,
                                    height: 200,
                                  ),
                                  Text(
                                    "RADHA",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.black),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(40.0),
                              child: Column(
                                children: [
                                  Image.asset(
                                    'lan.JPG',
                                    width: 200,
                                    height: 200,
                                  ),
                                  Text(
                                    "SITA",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.black),
                                  )
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
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

class ParticleBackground extends StatelessWidget {
  final Widget child;
  final TickerProvider vsync;
  const ParticleBackground({required this.child, required this.vsync});

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
      vsync: vsync,
      child: child,
    );
  }
}
