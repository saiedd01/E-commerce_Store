import 'package:e_commerce/pages/check_out.dart';
import 'package:e_commerce/provider/cart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class IconAppbar extends StatelessWidget {
  const IconAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final collect = Provider.of<Cart>(context);
    return Row(
      children: [
        Stack(
          children: [
            Container(
              child: Text(
                "${collect.selectedProducts.length}",
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
            IconButton(onPressed: ()
            {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CheckOut(),
                ),
              );
            },
              icon: Icon(Icons.add_shopping_cart,
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: Text(
            "\$ ${collect.price}",
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        ),
      ],
    );
  }
}
