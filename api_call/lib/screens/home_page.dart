import 'package:api_call/screens/details_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, required this.data});

  final List data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("App Bar"),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, index) => Container(
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Color.fromRGBO(186, 104, 200, 1),
                  width: 2.0,
                ),
              ),
            ),
            child: GestureDetector(
              child: ListTile(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) =>
                          DetailsPage(id: data[index]["id"].toString()),
                    ),
                  );
                },
                leading: CircleAvatar(
                  child: Text(data[index]["id"].toString()),
                ),
                title: Text("${data[index]['title']}".toUpperCase()),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
