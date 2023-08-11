import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
import 'package:flutter_chat/Routes/routes_import.dart';

//import 'package:go_router/go_router.dart';

void main() {
  runApp(MyApp());
}

// GoRouter _appRoute = GoRouter(routes: <RouteBase>[
//   GoRoute(
//     path: "/",
//     builder: (BuildContext context, GoRouterState state) {
//       return home_page();
//     },
//   ),
//   GoRoute(
//     path: "/orderPage",
//     builder: (BuildContext context, GoRouterState state) {
//       return const orderpage();
//     },
//   ),
//   GoRoute(
//     path: "/logoutPage",
//     builder: (BuildContext context, GoRouterState state) {
//       return const logoutPage();
//     },
//   ),
// ]);

class MyApp extends StatefulWidget {
  MyApp({super.key});
  @override
  _MyAppState createState() => _MyAppState();

  final _appRouter = AppRouter();

  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _appRouter.config(deepLinkBuilder: (deepLink) {
        if (deepLink.path.startsWith('/order')) {
          // continute with the platfrom link
          return deepLink;
        } else {
          return DeepLink.defaultPath;
          // or DeepLink.path('/')
          // or DeepLink([HomeRoute()])
        }
      }),
      //initialRoute: '/',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),

      // routes: {
      //   "/": (context) => home_page(),
      //   "/logoutPage": (context) => logoutPage(),
      //   "/orderpage": (context) => orderpage()
      // },
    );
  }
}

class _MyAppState extends State<MyApp> {
  final _appRouter = AppRouter();

  // @override
  // void initState() {
  //   super.initState();
  //   initUniLinks();
  // }

  // Future<void> initUniLinks() async {
  //   try {
  //     final initialUri = await getInitialUri();
  //     if (initialUri != null) {
  //       _handleDeepLink(initialUri);
  //     }

  //     uriLinkStream.listen((Uri? uri) {
  //       if (uri != null) {
  //         _handleDeepLink(uri);
  //       }
  //     });
  //   } on PlatformException {
  //     // Handle exception if any
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: AutoRouterDelegate(
        _appRouter,
        navigatorObservers: () => [AutoRouteObserver()],
      ),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}

// class MyApp extends StatelessWidget {
//   MyApp({super.key});
//   _MyAppState createState() => _MyAppState();  

//   final _appRouter = AppRouter();

//   @override
  
//   Widget build(BuildContext context) {
//     return MaterialApp.router(
//       routerConfig: _appRouter.config(),
//       initialRoute: '/',
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(scaffoldBackgroundColor: Colors.white),

//       // routes: {
//       //   "/": (context) => home_page(),
//       //   "/logoutPage": (context) => logoutPage(),
//       //   "/orderpage": (context) => orderpage()
//       // },
//     );
//   }
// }
