import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nagivation/routes/rotue_page.dart';

class ClientLayout extends StatefulWidget {
  const ClientLayout({super.key, required this.child});

  final Widget child;

  @override
  State<ClientLayout> createState() => _ClientLayoutState();
}

class _ClientLayoutState extends State<ClientLayout> {
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Navigation App")),
      body: widget.child,
      bottomNavigationBar: NavigationBar(
        selectedIndex: activeIndex,
        onDestinationSelected: (index) {
          setState(() {
            activeIndex = index;
          });
          switch (index) {
            case 0:
              context.goNamed(Routes.home);
              break;
            case 1:
              context.goNamed(Routes.about);
              break;
            case 2:
              context.goNamed(Routes.contact);
              break;
            default:
              context.goNamed(Routes.home);
          }
        },
        destinations: [
          NavigationDestination(icon: Icon(Icons.home), label: ""),
          NavigationDestination(icon: Icon(Icons.info), label: ""),
          NavigationDestination(icon: Icon(Icons.contact_mail), label: ""),
        ],
      ),
    );
  }
}
