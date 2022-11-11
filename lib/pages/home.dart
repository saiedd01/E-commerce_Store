import 'package:e_commerce/shared/colors.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(
         backgroundColor: Colors.black,
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                          "assets/img/black.jpeg",
                      ),
                      fit: BoxFit.cover),
                ),
                currentAccountPicture: CircleAvatar(
                    radius: 55,
                    backgroundImage: AssetImage(
                        "assets/img/img1.jpeg",
                    ),
                ),

                accountName:
                  Text(
                    "saied 🇪🇦🇦🇷",
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                    ),
                  ),
                  accountEmail: Text(
                    "@_saiied_",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white.withOpacity(0.5),
                    ),
                  ),
              ),
            ],
          ),
        ),
        appBar: AppBar(
          actions: [
            Row(
              children: [
                Stack(
                  children: [
                    Container(
                      child: Text(
                        "2",
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                      ),
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(211, 167, 255, 193),
                        shape: BoxShape.circle
                      ),
                    ),
                    IconButton(onPressed: () {},
                      icon: Icon(Icons.add_shopping_cart,
                      ),
                    ),
                  ],
                ),

                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Text(
                      "150",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            )
          ],
          title: Text(
              "Home",
          style: TextStyle(
            fontSize: 18,
          ),
          ),
          backgroundColor: appbar_Green,

        ),
      ),
    );
  }
}
