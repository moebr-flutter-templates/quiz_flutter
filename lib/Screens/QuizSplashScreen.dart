import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:quiz_flutter/Screens/QuizSignIn.dart';
import 'package:quiz_flutter/utils/AppWidget.dart';

class QuizSplashScreen extends StatefulWidget {
  @override
  _QuizSplashScreenState createState() => _QuizSplashScreenState();
}

class _QuizSplashScreenState extends State<QuizSplashScreen> {
  @override
  void initState() {
    super.initState();
    init();
  }

  void init() async {
    await 3.seconds.delay.then((value) => push(QuizSignIn(), pageRouteAnimation: PageRouteAnimation.Slide, isNewTask: true));
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            commonCacheImageWidget("images/quiz/ic_background.png", height: 250, width: 250),
          ],
        ).withWidth(context.width()),
      ),
    );
  }
}
