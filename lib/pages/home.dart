import 'package:e_commerce/model/product.dart';
import 'package:e_commerce/pages/check_out.dart';
import 'package:e_commerce/pages/details_screen.dart';
import 'package:e_commerce/provider/cart.dart';
import 'package:e_commerce/shared/colors.dart';
import 'package:e_commerce/shared/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final collect = Provider.of<Cart>(context);

    return SafeArea(
      child: Scaffold(
        body: Padding(
        padding: const EdgeInsets.only(top: 22),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 2 / 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 33),
          itemCount: Products.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: ()
              {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Details(photo: Products[index]),
                  ),
                );
              },
              child: GridTile(
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.asset(Products[index].imgPath)),
               footer: GridTileBar(
                 trailing:
                 IconButton(
                         onPressed: (){
                           collect.add(Products[index]);
                         },
                         color: Colors.black,
                         icon: Icon(Icons.add),
                       ),

                 leading: Text("\$ ${Products[index].price}"),
                 title: Text(
                   "",
                 ),
                 ),
               ),
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
                        "saied ????????????????",
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
                      onTap: ()
                      {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CheckOut(),
                          ),
                        );
                      }
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
                "Developed by Saied Ahmed ?? 2022",
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

            IconAppbar(),

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
