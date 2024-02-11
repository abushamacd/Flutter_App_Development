import 'package:flutter/material.dart';
import 'package:pokemon/widgets/badge.dart';
import 'package:pokemon/widgets/page_title.dart';
import '../widgets/details_title.dart';

class PokeDetails extends StatelessWidget {
  const PokeDetails({super.key, this.pokemon});

  final Map? pokemon;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff49D0B0),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Icon(
              Icons.menu,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: Container(
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Column(
              children: [
                Expanded(
                  flex: 3,
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(color: Colors.transparent),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: PageTitle(title: "${pokemon?["name"]}")),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Row(
                            children: [
                              for (int i = 0; i < pokemon?['type'].length; i++)
                                TagBadge(tagText: pokemon?['type'][i])
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.0, vertical: 80),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              DetailsTitle(
                                text: "Height",
                                fontWeight: FontWeight.normal,
                                color: Colors.grey,
                              ),
                              DetailsTitle(
                                text: "Weight",
                                fontWeight: FontWeight.normal,
                                color: Colors.grey,
                              ),
                              DetailsTitle(
                                text: "Candy",
                                fontWeight: FontWeight.normal,
                                color: Colors.grey,
                              ),
                              DetailsTitle(
                                text: "Candy Count",
                                fontWeight: FontWeight.normal,
                                color: Colors.grey,
                              ),
                              DetailsTitle(
                                text: "Speed",
                                fontWeight: FontWeight.normal,
                                color: Colors.grey,
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              DetailsTitle(
                                text: "${pokemon?['height']}",
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                              DetailsTitle(
                                text: "${pokemon?['weight']}",
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                              DetailsTitle(
                                text: "${pokemon?['candy']}",
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                              DetailsTitle(
                                text:
                                    "${(pokemon?['candy_count'] != null) ? "${pokemon?['candy_count']}" : "0"}",
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                              DetailsTitle(
                                text: "${pokemon?['egg']}",
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              top: 110.0,
              child: Container(
                width: 250,
                height: 250,
                child: Hero(
                  tag: "${pokemon?['num']}",
                  child: Image.network(
                    pokemon?['img'],
                    key: Key(pokemon?['img']),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
