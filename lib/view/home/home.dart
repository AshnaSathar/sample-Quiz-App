import 'package:flutter/material.dart';
import 'package:flutter_application_1/score/score.dart';

class Home extends StatefulWidget {
  const Home({Key? key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int? selectedIndex;
  int currentQuestionIndex = 0;
  int userscorecount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(),
        body: Container(
      height: double.infinity,
      width: double.infinity,
      child: Stack(
        children: [
          Image.network(
            "https://www.indezine.com/powerpoint/freebackground/templates/t_ind_2515a.jpg",
            fit: BoxFit.fill,
            height: double.infinity,
            width: double.infinity,
          ),
          Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    height: 100,
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 150,
                      width: 390,
                      decoration: BoxDecoration(border: Border.all()),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 35,
                          ),
                          Center(
                            child: Text(
                              Database.quizQuestions[currentQuestionIndex]
                                      ['question']
                                  .toString(),
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                height: 25,
                              )
                            ],
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedIndex = index;
                                print(selectedIndex);
                              });
                            },
                            child: Container(
                              height: 60,
                              width: 330,
                              decoration: BoxDecoration(
                                  border: Border.all(),
                                  color: selectedIndex == index
                                      ? selectedIndex ==
                                              Database.quizQuestions[
                                                      currentQuestionIndex]
                                                  ['correctAnswer']
                                          ? Colors.green
                                          : Colors.red
                                      : Colors.transparent),
                              child: Center(
                                child: Text(
                                    Database.quizQuestions[currentQuestionIndex]
                                        ['options'][index]),
                              ),
                              // Change to white otherwise
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              Container(
                alignment: Alignment.bottomRight,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      print("selectedinde=$selectedIndex");
                      if (selectedIndex ==
                          Database.quizQuestions[currentQuestionIndex]
                              ['correctAnswer']) {
                        userscorecount++;
                        print("user:$userscorecount");
                        print("current=$currentQuestionIndex");
                        currentQuestionIndex++;
                        selectedIndex = null;
                      } else {
                        currentQuestionIndex++;
                        selectedIndex = null;
                      }

                      if (currentQuestionIndex > 4) {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return Score(
                              score: userscorecount,
                            ); // Navigate to the Score screen
                          }),
                        );
                      }
                    });

                    print(currentQuestionIndex);
                  },
                  child: Text("NEXT"),
                ),
              )
            ],
          ),
        ],
      ),
    ));
  }
}

class Database {
  static List<Map<String, dynamic>> quizQuestions = [
    {
      'question': 'Question 1: What is Flutter?',
      'options': [
        'A programming language',
        'A JavaScript framework',
        'A mobile app development framework',
        'A game development engine',
      ],
      'correctAnswer': 2,
    },
    {
      'question':
          'Question 2: What is the primary programming language used in Flutter development?',
      'options': [
        'Python',
        'Java',
        'Dart',
        'Swift',
      ],
      'correctAnswer': 2,
    },
    {
      'question':
          'Question 3: Which widget is used to create a scrollable list of items in Flutter?',
      'options': [
        'ListView',
        'Container',
        'GridView',
        'Card',
      ],
      'correctAnswer': 0,
    },
    {
      'question':
          'Question 4: What is the purpose of the "pubspec.yaml" file in a Flutter project?',
      'options': [
        'It defines the project\'s dependencies and metadata.',
        'It contains the app\'s user interface layout.',
        'It defines the project\'s main function.',
        'It stores the app\'s database configuration.',
      ],
      'correctAnswer': 0,
    },
    {
      'question':
          'Question 5: In a Flutter database model, what represents key and value pairs?',
      'options': [
        'Text',
        'Scaffold',
        'RaisedButton',
        'Row',
      ],
      'correctAnswer': 3,
    },
  ];
}
