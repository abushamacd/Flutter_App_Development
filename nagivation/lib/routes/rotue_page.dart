import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nagivation/layout/client_layout.dart';
import 'package:nagivation/screens/about_page.dart';
import 'package:nagivation/screens/contact_page.dart';
import 'package:nagivation/screens/home_page.dart';
import 'package:nagivation/screens/login_page.dart';
part 'routers.dart';

class RoutePages {
  static bool isLogin = true;
  static final router = GoRouter(
    redirect: (context, state) {
      if (isLogin) {
        return Routes.home;
      } else {}
      return Routes.login;
    },
    routes: [
      GoRoute(
        path: Routes.home,
        name: Routes.home,
        pageBuilder: (context, state) => const MaterialPage(
          child: ClientLayout(
            child: HomePage(),
          ),
        ),
      ),
      ShellRoute(
          builder: (context, state, child) {
            return ClientLayout(
              child: child,
            );
          },
          routes: [
            GoRoute(
              path: Routes.login,
              name: Routes.login,
              pageBuilder: (context, state) => const MaterialPage(
                child: LoginPage(),
              ),
            ),
            GoRoute(
              path: Routes.about,
              name: Routes.about,
              pageBuilder: (context, state) => const MaterialPage(
                child: AboutPage(),
              ),
            ),
            GoRoute(
              path: Routes.contact,
              name: Routes.contact,
              pageBuilder: (context, state) => const MaterialPage(
                child: ContactPage(),
              ),
            ),
          ])
    ],
  );
}
