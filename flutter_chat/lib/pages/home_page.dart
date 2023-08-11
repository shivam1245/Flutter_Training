import 'package:auto_route/auto_route.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat/widgets/home_app_bar.dart';

@RoutePage()
class home_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const home_app_bar(),
          Container(
            height: 590,
            padding: EdgeInsets.only(top: 530),
            decoration: BoxDecoration(
              color: Color(0xFFEDECF2),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35),
                  topRight: Radius.circular(35),
                  bottomLeft: Radius.circular(35),
                  bottomRight: Radius.circular(35)),
            ),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 5),
                        height: 400,
                        width: 200,
                        child: TextFormField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Start chat....."),
                        ),
                      ),
                      Spacer(),
                      Icon(
                        Icons.send,
                        size: 27,
                        color: Color(0xFF4C53A5),
                      ),
                    ],
                  ),
                ),
                //Container(
                //alignment: Alignment.centerLeft,
                //margin: EdgeInsets.symmetric(
                //vertical: 20,
                //horizontal: 20,
                //),
                //),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        onTap: (chat) {},
        height: 70,
        color: Color(0xFF4C53A5),
        items: [
          Icon(Icons.chat, size: 30, color: Colors.white),
          Icon(
            Icons.shopping_bag_sharp,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.money,
            size: 30,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
