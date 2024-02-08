import 'package:flutter/material.dart';
import 'package:pokemon/widgets/badge.dart';

import '../screens/details_page.dart';

class PokemonCard extends StatelessWidget {
  const PokemonCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: ((context) => PokeDetails()),
          ),
        );
      },
      child: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xff49D0B0),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "title",
                    style: TextStyle(
                      fontSize: 25.00,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                  TagBadge(tagText: "tag"),
                  TagBadge(tagText: "tag")
                ],
              ),
            ),
          ),
          Positioned(
            right: 0.00,
            bottom: 0.00,
            child: Hero(
              tag: "01",
              child: Image.network(
                "http://www.serebii.net/pokemongo/pokemon/001.png",
                width: 100.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
