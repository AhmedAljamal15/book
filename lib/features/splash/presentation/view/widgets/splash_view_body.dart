import 'package:book/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> splashAnimation;

  @override
  void initState() {
    super.initState();
    initSplashAnimation();

    navigateHomeView();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo),
        AnimatedBuilder(
          animation: splashAnimation,
          builder: (context, _) {
            return SlideTransition(
              position: splashAnimation,
              child: Text('Read Free Books', textAlign: TextAlign.center),
            );
          },
        ),
      ],
    );
  }


  void navigateHomeView() {
    Future.delayed(Duration(seconds: 3), () {
      if (mounted) {
        GoRouter.of(context).push("/homeView");
      }
    });
  }
  void initSplashAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );
    super.initState();

    splashAnimation = Tween<Offset>(
      begin: Offset(0, 22),
      end: Offset(0, 0),
    ).animate(animationController);

    animationController.forward();
  }
}
