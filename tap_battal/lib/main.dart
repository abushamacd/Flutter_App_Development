import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int redScore = 50;
  int blueScore = 50;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: SafeArea(
        child: Scaffold(
          body: Stack(
            children: [
              Column(
                children: [
                  Expanded(
                    flex: redScore,
                    child: InkWell(
                      onTap: redScoreUpdate,
                      child: Container(
                        color: Colors.red,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: blueScore,
                    child: InkWell(
                      onTap: blurScoreUpdate,
                      child: Container(
                        color: Colors.blue[300],
                      ),
                    ),
                  ),
                ],
              ),
              redScore >= 100 || blueScore >= 100
                  ? Container(
                      height: double.infinity,
                      width: double.infinity,
                      color: Colors.black.withOpacity(0.1),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                            child: Text(
                              "${redScore >= 100 ? "Red" : "Blue"} Won",
                              style: TextStyle(
                                  fontSize: 60.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  redScore = 50;
                                  blueScore = 50;
                                });
                              },
                              child: Icon(Icons.replay_outlined))
                        ],
                      ),
                    )
                  : Container(),
            ],
          ),
        ),
      ),
    );
  }

  void redScoreUpdate() {
    setState(() {
      redScore = redScore + 1;
      blueScore = blueScore - 1;
    });
  }

  void blurScoreUpdate() {
    setState(() {
      blueScore = blueScore + 1;
      redScore = redScore - 1;
    });
  }
}
