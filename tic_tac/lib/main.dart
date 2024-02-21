import 'package:flutter/material.dart';
import 'package:tic_tac/enums/box_state.dart';
import 'package:tic_tac/enums/game_state.dart';
import 'package:tic_tac/widgets/box_state_icon.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  BoxState a1 = BoxState.empty;
  BoxState a2 = BoxState.empty;
  BoxState a3 = BoxState.empty;
  BoxState b1 = BoxState.empty;
  BoxState b2 = BoxState.empty;
  BoxState b3 = BoxState.empty;
  BoxState c1 = BoxState.empty;
  BoxState c2 = BoxState.empty;
  BoxState c3 = BoxState.empty;

  bool isCrossTrun = true;

  GameState gateState = GameState.gameContinue;

  void sroceUpdate() {
    // a
    if (a1 == a2 && a2 == a3 && a1 != BoxState.empty) {
      if (a1 == BoxShape.circle) {
        gateState = GameState.circleWon;
      } else {
        gateState = GameState.crossWon;
      }
    }

    // b
    if (b1 == b2 && b2 == b3 && b1 != BoxState.empty) {
      if (b1 == BoxShape.circle) {
        gateState = GameState.circleWon;
      } else {
        gateState = GameState.crossWon;
      }
    }

    // c
    if (c1 == c2 && c2 == c3 && c1 != BoxState.empty) {
      if (c1 == BoxShape.circle) {
        gateState = GameState.circleWon;
      } else {
        gateState = GameState.crossWon;
      }
    }

    // a1 col
    if (a1 == b1 && b1 == c1 && a1 != BoxState.empty) {
      if (a1 == BoxShape.circle) {
        gateState = GameState.circleWon;
      } else {
        gateState = GameState.crossWon;
      }
    }

    // a2 col
    if (a2 == b2 && b2 == c2 && a2 != BoxState.empty) {
      if (a2 == BoxShape.circle) {
        gateState = GameState.circleWon;
      } else {
        gateState = GameState.crossWon;
      }
    }

    // a3 col
    if (a3 == b3 && b3 == c3 && a3 != BoxState.empty) {
      if (a3 == BoxShape.circle) {
        gateState = GameState.circleWon;
      } else {
        gateState = GameState.crossWon;
      }
    }

    // a1 x
    if (a1 == b2 && b2 == c3 && a1 != BoxState.empty) {
      if (a1 == BoxShape.circle) {
        gateState = GameState.circleWon;
      } else {
        gateState = GameState.crossWon;
      }
    }

    // a3 x
    if (a3 == b2 && b2 == c1 && a3 != BoxState.empty) {
      if (a3 == BoxShape.circle) {
        gateState = GameState.circleWon;
      } else {
        gateState = GameState.crossWon;
      }
    }
  }

  void resetGame() {
    a1 = BoxState.empty;
    a2 = BoxState.empty;
    a3 = BoxState.empty;
    b1 = BoxState.empty;
    b2 = BoxState.empty;
    b3 = BoxState.empty;
    c1 = BoxState.empty;
    c2 = BoxState.empty;
    c3 = BoxState.empty;
    gateState = GameState.gameContinue;
    isCrossTrun = true;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tic Tac Toe Game',
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: const Text('Tic Tac Toe')),
        ),
        body: Stack(
          children: [
            Column(
              children: [
                Expanded(
                  flex: 2,
                  child: Center(
                    child: Text(
                      "Trun: ${isCrossTrun ? "Cross" : "Circle"}",
                      style: TextStyle(fontSize: 40),
                    ),
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: GridView.count(
                    mainAxisSpacing: 6.0,
                    crossAxisSpacing: 6.0,
                    crossAxisCount: 3,
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            if (a1 == BoxState.empty) {
                              if (isCrossTrun) {
                                a1 = BoxState.cross;
                              } else {
                                a1 = BoxState.circle;
                              }
                              isCrossTrun = !isCrossTrun;
                              sroceUpdate();
                            }
                          });
                        },
                        child: Container(
                          color: Colors.blueAccent,
                          child: BoxStateIcon(state: a1),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            if (a2 == BoxState.empty) {
                              if (isCrossTrun) {
                                a2 = BoxState.cross;
                              } else {
                                a2 = BoxState.circle;
                              }
                              isCrossTrun = !isCrossTrun;
                              sroceUpdate();
                            }
                          });
                        },
                        child: Container(
                          color: Colors.blueAccent,
                          child: BoxStateIcon(state: a2),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            if (a3 == BoxState.empty) {
                              if (isCrossTrun) {
                                a3 = BoxState.cross;
                              } else {
                                a3 = BoxState.circle;
                              }
                              isCrossTrun = !isCrossTrun;
                              sroceUpdate();
                            }
                          });
                        },
                        child: Container(
                          color: Colors.blueAccent,
                          child: BoxStateIcon(state: a3),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            if (b1 == BoxState.empty) {
                              if (isCrossTrun) {
                                b1 = BoxState.cross;
                              } else {
                                b1 = BoxState.circle;
                              }
                              isCrossTrun = !isCrossTrun;
                              sroceUpdate();
                            }
                          });
                        },
                        child: Container(
                          color: Colors.blueAccent,
                          child: BoxStateIcon(state: b1),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            if (b2 == BoxState.empty) {
                              if (isCrossTrun) {
                                b2 = BoxState.cross;
                              } else {
                                b2 = BoxState.circle;
                              }
                              isCrossTrun = !isCrossTrun;
                              sroceUpdate();
                            }
                          });
                        },
                        child: Container(
                          color: Colors.blueAccent,
                          child: BoxStateIcon(state: b2),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            if (b3 == BoxState.empty) {
                              if (isCrossTrun) {
                                b3 = BoxState.cross;
                              } else {
                                b3 = BoxState.circle;
                              }
                              isCrossTrun = !isCrossTrun;
                              sroceUpdate();
                            }
                          });
                        },
                        child: Container(
                          color: Colors.blueAccent,
                          child: BoxStateIcon(state: b3),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            if (c1 == BoxState.empty) {
                              if (isCrossTrun) {
                                c1 = BoxState.cross;
                              } else {
                                c1 = BoxState.circle;
                              }
                              isCrossTrun = !isCrossTrun;
                              sroceUpdate();
                            }
                          });
                        },
                        child: Container(
                          color: Colors.blueAccent,
                          child: BoxStateIcon(state: c1),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            if (c2 == BoxState.empty) {
                              if (isCrossTrun) {
                                c2 = BoxState.cross;
                              } else {
                                c2 = BoxState.circle;
                              }
                              isCrossTrun = !isCrossTrun;
                              sroceUpdate();
                            }
                          });
                        },
                        child: Container(
                          color: Colors.blueAccent,
                          child: BoxStateIcon(state: c2),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            if (c3 == BoxState.empty) {
                              if (isCrossTrun) {
                                c3 = BoxState.cross;
                              } else {
                                c3 = BoxState.circle;
                              }
                              isCrossTrun = !isCrossTrun;
                              sroceUpdate();
                            }
                          });
                        },
                        child: Container(
                          color: Colors.blueAccent,
                          child: BoxStateIcon(state: c3),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            gateState != GameState.gameContinue
                ? Container(
                    height: double.infinity,
                    width: double.infinity,
                    color: Colors.black.withOpacity(0.7),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: Text(
                            "${gateState == GameState.crossWon ? "Cross" : "Circle"} Won",
                            style: TextStyle(
                                fontSize: 60.0,
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        ElevatedButton(
                            onPressed: () {
                              setState(resetGame);
                            },
                            child: Icon(Icons.replay_outlined))
                      ],
                    ),
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}
