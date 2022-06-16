import 'package:flutter/material.dart';
import 'package:quiz_app/quiz_brain.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

int questionNumber = 0;
int finalScore = 0;
QuizBrain quizBrain = QuizBrain();

class QuizPage extends StatefulWidget {
  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.cyan,
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "${questionNumber + 1} of ${quizBrain.questions.length}",
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "Score : $finalScore",
                          style: TextStyle(
                              fontSize: 24,
                              color: Colors.yellow,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                    color: Colors.white,
                    style: BorderStyle.solid,
                    width: 2.0,
                  )),
                  child: Image.asset(
                    "assets/images/${quizBrain.images[questionNumber]}.jpg",
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    child: Text(
                      quizBrain.questions[questionNumber],
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      MaterialButton(
                        color: Colors.blueGrey,
                        onPressed: () {
                          setState(() {
                            if (quizBrain.choices[questionNumber][0] ==
                                quizBrain.correctAnswers[questionNumber]) {
                              debugPrint("correct");
                              finalScore++;
                            } else {
                              debugPrint("false");
                            }

                            if (questionNumber ==
                                quizBrain.questions.length - 1) {
                              Alert(
                                context: context,
                                title: "Finished",
                                desc: "Your total score is : $finalScore",
                              ).show();
                            } else {
                              questionNumber++;
                            }
                          });
                        },
                        child: Text(
                          "${quizBrain.choices[questionNumber][0]}",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      MaterialButton(
                        color: Colors.blueGrey,
                        onPressed: () {
                          setState(() {
                            if (quizBrain.choices[questionNumber][1] ==
                                quizBrain.correctAnswers[questionNumber]) {
                              debugPrint("correct");
                              finalScore++;
                            } else {
                              debugPrint("false");
                            }

                            if (questionNumber ==
                                quizBrain.questions.length - 1) {
                              Alert(
                                context: context,
                                title: "Finished",
                                desc: "Your total score is : $finalScore",
                              ).show();
                            } else {
                              questionNumber++;
                            }
                          });
                        },
                        child: Text(
                          "${quizBrain.choices[questionNumber][1]}",
                          style: TextStyle(color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      MaterialButton(
                        color: Colors.blueGrey,
                        onPressed: () {
                          setState(() {
                            if (quizBrain.choices[questionNumber][2] ==
                                quizBrain.correctAnswers[questionNumber]) {
                              debugPrint("correct");
                              finalScore++;
                            } else {
                              debugPrint("false");
                            }

                            if (questionNumber ==
                                quizBrain.questions.length - 1) {
                              Alert(
                                context: context,
                                title: "Finished",
                                desc: "Your total score is : $finalScore",
                              ).show();
                            } else {
                              questionNumber++;
                            }
                          });
                        },
                        child: Text(
                          quizBrain.choices[questionNumber][2],
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      MaterialButton(
                        color: Colors.blueGrey,
                        onPressed: () {
                          setState(() {
                            if (quizBrain.choices[questionNumber][3] ==
                                quizBrain.correctAnswers[questionNumber]) {
                              debugPrint("correct");
                              finalScore++;
                            } else {
                              debugPrint("false");
                            }

                            if (questionNumber ==
                                quizBrain.questions.length - 1) {
                              Alert(
                                context: context,
                                title: "Finished",
                                desc: "Your total score is : $finalScore",
                              ).show();
                            } else {
                              questionNumber++;
                            }
                          });
                        },
                        child: Text(
                          quizBrain.choices[questionNumber][3],
                          style: TextStyle(color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    MaterialButton(
                      color: Colors.red,
                      onPressed: () {
                        setState(() {
                          finalScore = 0;
                          questionNumber = 0;
                        });
                      },
                      child: Text("Reset",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                          )),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    MaterialButton(
                      color: Colors.orange,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text("Quit",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                          )),
                    ),
                  ],
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
