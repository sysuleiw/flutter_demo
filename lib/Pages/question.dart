import 'package:flutter/material.dart';

class Question extends StatefulWidget {
  @override
  QuestionState createState() => new QuestionState();
}

class QuestionState extends State<Question> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Center(child: Text('当前是问题咨询页面')),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  void didUpdateWidget(Question oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }
}
