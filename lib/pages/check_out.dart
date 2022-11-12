import 'package:e_commerce/model/product.dart';
import 'package:e_commerce/provider/cart.dart';
import 'package:e_commerce/shared/colors.dart';
import 'package:e_commerce/shared/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CheckOut extends StatelessWidget {
  const CheckOut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final collect = Provider.of<Cart>(context);

    return Scaffold(
      appBar: AppBar(
        actions: [
          IconAppbar(),
        ],
        title: Text(
          "Check Out",
          style: TextStyle(
            fontSize: 18,
          ),
        ),
        backgroundColor: appbar_Green,
      ),

    );
  }
}
