import 'package:e_commerce/shared/colors.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
        padding: const EdgeInsets.only(top: 22),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 2 / 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 25),
          itemCount: 16,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {} ,
              child: GridTile(
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.asset("assets/img/Ag.jpg")),
               footer: GridTileBar(
                 trailing: IconButton(
                   onPressed: (){},
                   color: Color.fromARGB(255, 62, 94, 70), 
                   icon: Icon(Icons.add),

                 ),
               ),
              )
            );
          },
        ),
        ),
        drawer: Drawer(
         backgroundColor: Colors.black,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [

                  UserAccountsDrawerHeader(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                              "assets/img/Demon.jpeg",
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
                  ListTile(
                      title: Text(
                          "Home",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      leading: Icon(Icons.home,
                      color: Colors.cyan,
                      ),
                      onTap: () {},
                  ),
                  ListTile(
                      title: Text(
                          "My products",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      leading: Icon(Icons.add_shopping_cart,
                      color: Colors.cyan,
                      ),
                      onTap: () {}
                  ),
                  ListTile(
                      title: Text(
                          "About",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      leading: Icon(Icons.help_center,
                      color: Colors.cyan,
                      ),
                      onTap: () {}
                  ),
                  ListTile(
                      title: Text(
                          "Logout",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      ),
                      leading: Icon(Icons.exit_to_app,
                      color: Colors.cyan,
                      ),
                      onTap: () {}
                  ),
                ],
              ),
            Container(
              margin: EdgeInsets.only(bottom: 15),
              child: Text(
                "Developed by Saied Ahmed © 2022",
                style: TextStyle(
                  color: Colors.cyan,
                  fontSize: 16,
                ),
              ),
            )
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
