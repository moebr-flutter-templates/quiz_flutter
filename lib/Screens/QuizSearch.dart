import 'package:flutter/material.dart';
import 'package:quiz_flutter/Screens/PurchaseMoreScreen.dart';
import 'package:quiz_flutter/model/QuizModels.dart';
import 'package:quiz_flutter/utils/QuizColors.dart';
import 'package:quiz_flutter/utils/QuizDataGenerator.dart';

class QuizSearch extends StatefulWidget {
  static String tag = '/QuizSearch';

  @override
  _QuizSearchState createState() => _QuizSearchState();
}

class _QuizSearchState extends State<QuizSearch> {
  late List<NewQuizModel> mListings;
  var searchCont = TextEditingController();

  @override
  void initState() {
    super.initState();
    mListings = getQuizData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: quiz_app_background,
      body: PurchaseMoreScreen(enableAppbar: true),
    );
  }
}
