import 'package:flutter/material.dart';
import 'package:quiz/list.dart';

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});

  @override
  State<QuizApp> createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  

  int currentQuestionIndex = 0;
  int selectedAnswerIndex = -1;
  int score = 0; 
  bool questionPage = true; 


  ButtonStyle checkAnswer(int answerIndex) {
    Color? buttonColor;

    if (selectedAnswerIndex != -1) {
      if (answerIndex == allQuestions[currentQuestionIndex]["correctAnswer"]) {
        buttonColor = Colors.green;
      } else if (selectedAnswerIndex == answerIndex) {
        buttonColor = Colors.red;
      } else {
        buttonColor = null;
      }
    } else {
      buttonColor = null;
    }

    return ElevatedButton.styleFrom(
      backgroundColor: buttonColor, 
      
    );
  }

  @override
  Widget build(BuildContext context) {
    return isQuestionScreen();
  }

  Scaffold isQuestionScreen() {
    if (questionPage) {
      return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Flutter Quiz App",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w900,
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          backgroundColor:
              const Color.fromARGB(255, 33, 150, 243), 
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0), 
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start, 
              children: [
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 10, 
                    ),
                    Text(
                      'Question: ${currentQuestionIndex + 1}/${allQuestions.length}',
                      style: const TextStyle(
                        fontSize: 24, 
                        fontWeight: FontWeight.w700,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  width: double.infinity,
                  child: Text(
                    allQuestions[currentQuestionIndex]["question"],
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      color: Color.fromARGB(255, 33, 150, 243),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                // Option A
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    style: checkAnswer(0),
                    onPressed: () {
                      if (selectedAnswerIndex == -1) {
                        setState(() {
                          selectedAnswerIndex = 0;
                        });
                      }
                    },
                    child: Text(
                      "A. ${allQuestions[currentQuestionIndex]["options"][0]}",
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                // Option B
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    style: checkAnswer(1),
                    onPressed: () {
                      if (selectedAnswerIndex == -1) {
                        setState(() {
                          selectedAnswerIndex = 1;
                        });
                      }
                    },
                    child: Text(
                      "B. ${allQuestions[currentQuestionIndex]["options"][1]}",
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                // Option C
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    style: checkAnswer(2),
                    onPressed: () {
                      if (selectedAnswerIndex == -1) {
                        setState(() {
                          selectedAnswerIndex = 2;
                        });
                      }
                    },
                    child: Text(
                      "C. ${allQuestions[currentQuestionIndex]["options"][2]}",
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                // Option D
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    style: checkAnswer(3),
                    onPressed: () {
                      if (selectedAnswerIndex == -1) {
                        setState(() {
                          selectedAnswerIndex = 3;
                        });
                      }
                    },
                    child: Text(
                      "D. ${allQuestions[currentQuestionIndex]["options"][3]}",
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                // Immediate Feedback
                if (selectedAnswerIndex != -1)
                  Text(
                    selectedAnswerIndex ==
                            allQuestions[currentQuestionIndex]["correctAnswer"]
                        ? "✅ Correct!"
                        : "❌ Wrong! The correct answer is '${allQuestions[currentQuestionIndex]["options"][allQuestions[currentQuestionIndex]["correctAnswer"]]}'.",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: selectedAnswerIndex ==
                              allQuestions[currentQuestionIndex]
                                  ["correctAnswer"]
                          ? Colors.green
                          : Colors.red,
                    ),
                  ),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            if (selectedAnswerIndex != -1) {
              setState(() {
                
                if (selectedAnswerIndex ==
                    allQuestions[currentQuestionIndex]["correctAnswer"]) {
                  score++;
                }

                if (currentQuestionIndex < allQuestions.length - 1) {
                  currentQuestionIndex++;
                } else {
                  questionPage = false;
                }
                selectedAnswerIndex = -1;
              });
            }
          },
          backgroundColor: Colors.blue,
          child: const Icon(
            Icons.arrow_forward,
            color: Colors.white,
          ),
        ),
      );
    } else {
      return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Quiz Result",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w900,
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0), 
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(
                  "https://static.vecteezy.com/system/resources/thumbnails/019/013/598/small_2x/medal-awards-and-trophies-png.png",
                  height: 300,
                ),
                const SizedBox(height: 30),
                const Text(
                  "🎉 Congratulations!",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w900,
                    color: Colors.orange,
                  ),
                ),
                const SizedBox(height: 30),
                const Text(
                  "Your Score:",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Text(
                  "$score/${allQuestions.length}",
                  style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w900,
                    color: Colors.orange,
                  ),
                ),
                const SizedBox(height: 30),
                SizedBox(
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        score = 0;
                        currentQuestionIndex = 0;
                        questionPage = true;
                        selectedAnswerIndex = -1;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                    ),
                    child: const Text(
                      "Restart Quiz",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      );
    }
  }
}
