import 'package:flutter/material.dart';
import 'package:pokemon/widgets/badge.dart';

import '../screens/details_page.dart';

class PokemonCard extends StatelessWidget {
  PokemonCard({super.key, this.pokemon});

  final Map? pokemon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: ((context) => PokeDetails(pokemon: pokemon)),
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
                    pokemon?["name"],
                    style: TextStyle(
                      fontSize: 25.00,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                  for (int i = 0; i < pokemon?['type'].length; i++)
                    TagBadge(tagText: pokemon?['type'][i])
                ],
              ),
            ),
          ),
          Positioned(
            right: 0.00,
            bottom: 0.00,
            child: Hero(
              tag: "${pokemon?['num']}",
              child: Image.network(
                pokemon?['img'],
                key: Key(pokemon?['img']),
                width: 100.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
