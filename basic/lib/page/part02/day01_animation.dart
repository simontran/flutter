import 'package:flutter/material.dart';

class Day01Animation extends StatefulWidget {
  const Day01Animation({super.key});

  @override
  State<Day01Animation> createState() => _Day01AnimationState();
}

class _Day01AnimationState extends State<Day01Animation>
    with TickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 2000,
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hello Flutter!',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Lorum ipsum the none.',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              GridView.builder(
                itemCount: 10,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemBuilder: (context, index) {
                  const int count = 10;
                  final Animation<double> animation = Tween<double>(
                    begin: 0.0,
                    end: 1.0,
                  ).animate(
                    CurvedAnimation(
                      parent: _animationController,
                      curve: Interval(
                        (1 / count) * index,
                        1,
                        curve: Curves.fastOutSlowIn,
                      ),
                    ),
                  );
                  _animationController.forward();
                  return AnimatedBuilder(
                    animation: _animationController,
                    builder: (context, child) {
                      return FadeTransition(
                        opacity: animation,
                        child: Transform(
                          transform: Matrix4.translationValues(
                            0.0,
                            50 * (1 - animation.value),
                            0.0,
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: Colors.amber,
                              gradient: LinearGradient(
                                colors: [
                                  Colors.red.withOpacity(0.8).withAlpha(111),
                                  Colors.green.withOpacity(0.8).withAlpha(111),
                                  Colors.blue.withOpacity(0.8).withAlpha(111),
                                ],
                                transform: const GradientRotation(0.5),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
