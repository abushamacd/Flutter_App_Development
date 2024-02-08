import 'package:flutter/material.dart';
import 'package:pokemon/widgets/badge.dart';
import 'package:pokemon/widgets/page_title.dart';
import '../widgets/details_title.dart';

class PokeDetails extends StatelessWidget {
  const PokeDetails({super.key});

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
                            child: PageTitle(title: "PokeDesk")),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Row(
                            children: [
                              TagBadge(tagText: "tagText"),
                              TagBadge(tagText: "tagText"),
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
                        EdgeInsets.symmetric(horizontal: 20.0, vertical: 60),
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
                                text: "Width",
                                fontWeight: FontWeight.normal,
                                color: Colors.grey,
                              ),
                              DetailsTitle(
                                text: "Weight",
                                fontWeight: FontWeight.normal,
                                color: Colors.grey,
                              ),
                              DetailsTitle(
                                text: "Speed",
                                fontWeight: FontWeight.normal,
                                color: Colors.grey,
                              ),
                              DetailsTitle(
                                text: "Space",
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
                                text: "Height",
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                              DetailsTitle(
                                text: "Width",
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                              DetailsTitle(
                                text: "Weight",
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                              DetailsTitle(
                                text: "Speed",
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                              DetailsTitle(
                                text: "Space",
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
                  tag: "01",
                  child: Image.network(
                    "http://www.serebii.net/pokemongo/pokemon/001.png",
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
