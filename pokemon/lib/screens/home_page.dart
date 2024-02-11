// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:pokemon/datasource/pokeman_data.dart';
import 'package:pokemon/widgets/page_title.dart';
import 'package:pokemon/widgets/pokemon_card.dart';

class HomePage extends StatelessWidget {
  HomePage({
    super.key,
  });

  List<Map?>? pokemons = Pokemon_data.pokemons;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 1,
            child: PageTitle(title: "PokeDesk"),
          ),
          Expanded(
            flex: 10,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: GridView.builder(
                itemCount: pokemons!.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 4 / 3,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10),
                itemBuilder: (context, i) => PokemonCard(pokemon: pokemons?[i]),
              ),
            ),
          )
        ],
      ),
    );
  }
}
