//import 'package:badges/badges.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat/Routes/routes_import.gr.dart';
// import 'package:flutter_chat/pages/drawer/drawer.dart';
//import 'package:flutter_chat/pages/logout_popup.dart';
//import 'package:flutter_chat/pages/orderPage.dart';

class home_app_bar extends StatelessWidget {
  const home_app_bar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.all(7),
            child: InkWell(
              onTap: () {
                // drawer:
                // const DrawerView();
                // Navigator.pushNamed(context, "/orderpage");
                AutoRouter.of(context).push(DrawerViewRoute());
              },
              child: const Icon(
                Icons.widgets,
                size: 30,
                color: Color(0xFF4C53A5),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              left: 110,
            ),
            child: Text(
              "Chats",
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
                color: Color(0xFF4C53A5),
              ),
            ),
          ),
          const Spacer(),
          Padding(
            padding: EdgeInsets.all(7),
            child: InkWell(
              onTap: () {
                // Navigator.pushNamed(context, "/logoutPage");
                AutoRouter.of(context).push(const LogoutPageRoute());
              },
              child: const Icon(
                Icons.login_outlined,
                size: 30,
                color: Color(0xFF4C53A5),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DrawerView extends home_app_bar {
  const DrawerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text('AllShop'),
          ),
          ListTile(
            title: const Text('Profile'),
            onTap: () {
              AutoRouter.of(context).push(const ProfileRoute());
              // Update the state of the app.
              // ...
            },
          ),
          ListTile(
            title: const Text('Orders'),
            onTap: () {
              AutoRouter.of(context).push(const OrderpageRoute());
              // Update the state of the app.
              // ...
            },
          ),
          ListTile(
            title: const Text('ogout'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              AutoRouter.of(context).pop();
            },
          ),
        ],
      ),
    );
  }
}
