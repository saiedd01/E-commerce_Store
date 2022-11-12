import 'package:e_commerce/shared/colors.dart';
import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  const Details({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  "\$25",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          )
        ],
        title: Text(
          "Details Screen",
          style: TextStyle(
            fontSize: 18,
          ),
        ),
        backgroundColor: appbar_Green,

      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/img/Ag.png"),
            SizedBox(height: 11,),
            Text(
                "\$12.5",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(height: 16,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    padding: EdgeInsets.all(4),
                    child: Text(
                      "New",
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 129, 129),
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                  SizedBox(width: 8,),

                  Row(
                    children: [
                      Icon(Icons.star,
                        size: 26,
                        color: Color.fromARGB(255, 255, 191, 0),
                      ),

                      Icon(Icons.star,
                        size: 26,
                        color: Color.fromARGB(255, 255, 191, 0),
                      ),

                      Icon(Icons.star,
                        size: 26,
                        color: Color.fromARGB(255, 255, 191, 0),
                      ),

                      Icon(Icons.star,
                        size: 26,
                        color: Color.fromARGB(255, 255, 191, 0),
                      ),

                      Icon(Icons.star,
                        size: 26,
                        color: Color.fromARGB(255, 255, 191, 0),
                      ),
                    ],
                  ),
                  Spacer(),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on_outlined,
                        size: 26,
                        color: Color.fromARGB(168, 3, 65, 27),
                      ),

                      SizedBox(width: 4,),

                      Text(
                        "Energy Store",
                      style: TextStyle(
                        fontSize: 15,
                      ),
                      ),
                    ],
                  ),

                ],
              ),
            ),
            SizedBox(height: 15,),
            SizedBox(
              width: double.infinity,
              child: Text(
                  "Details :",
                style: TextStyle(fontSize: 20),
                //textAlign: TextAlign.start,
              ),
            ),
            SizedBox(height: 15,),


          ],
        ),
      ),
    );

  }
}
