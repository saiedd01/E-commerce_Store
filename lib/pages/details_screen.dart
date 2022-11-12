import 'package:e_commerce/model/product.dart';
import 'package:e_commerce/provider/cart.dart';
import 'package:e_commerce/shared/colors.dart';
import 'package:e_commerce/shared/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Details extends StatefulWidget {

  Product photo;
  Details(
      {
        required this.photo
      }
      );

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  //const Details({Key? key}) : super(key: key);
  bool isShowmore = true;

  @override
  Widget build(BuildContext context) {
    final collect = Provider.of<Cart>(context);

    return Scaffold(
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

      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(widget.photo.imgPath),
            SizedBox(height: 11,),
            Text(
                "\$${widget.photo.price}",
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
                style: TextStyle(fontSize: 22),
                //textAlign: TextAlign.start,
              ),
            ),
            SizedBox(height: 15,),

            Text(
                "In contrast to all previous World Cups, the Qatar World Cup takes place in the winter of the northern hemisphere. Therefore, Adidas, Nike, and Puma launched their kits later than usual. The first 2022 World Cup kits were launched by Puma in late May 2022. Adidas and Nike followed in August and September 2022.ONLY 6 TEAMS ARE NOT SUPPLIED BY ADIDAS, NIKE, OR PUMAThe 2022 World Cup kits bring us new jerseys for all teams except Canada, who keep their teamwear-based Nike kits as they are on a different kit development cycle.Adidas, Nike, Puma, and the smaller brands designed bespoke kits for all of their teams - they are no teamwear jerseys on stage except those of the Canadian football team.",
            style: TextStyle(
                fontSize: 20
            ),
              maxLines: isShowmore ? 3 : null,
              overflow: TextOverflow.fade ,
            ),
            TextButton(
              onPressed: ()
              {
                setState(() {
                  isShowmore = !isShowmore;
                });
              },
                child: Text(
                  isShowmore ? "Show more" : "Show less",
                style: TextStyle(
                  fontSize: 18,
                ),
                ),
            ),

          ],
        ),
      ),
    );

  }
}
