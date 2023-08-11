import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat/Routes/routes_import.gr.dart';

class DrawerView extends StatelessWidget {
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
            title: const Text('logout'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              AutoRouter.of(context).push(const LogoutPageRoute());
            },
          ),
        ],
      ),
    );
  }
}
