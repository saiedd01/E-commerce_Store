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
    Product cart;
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
      body: Column(
        children: [
          SingleChildScrollView(
            child: Container(
              height: 660,
              child: ListView.builder(
                padding: EdgeInsets.all(4),
                itemCount: collect.selectedProducts.length,
                itemBuilder: (BuildContext context, int index){
                  return Card(
                    child: ListTile(
                      title: Text(collect.selectedProducts[index].name),
                      subtitle: Text(
                          "${collect.selectedProducts[index].price}"),
                      leading: CircleAvatar(
                        backgroundImage:AssetImage(collect.selectedProducts[index].imgPath),
                        backgroundColor: Colors.white.withOpacity(0.5),),
                      trailing: IconButton(
                          onPressed: ()
                          {
                            collect.delete(collect.selectedProducts[index]);
                          },
                          icon: Icon(Icons.remove)),
                    ),
                  );
                }),
            ),
          ),
          ElevatedButton(onPressed: (){},
              child: Text(
                "Pay\$ ${collect.price}",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Btn_pink),
              padding: MaterialStateProperty.all(EdgeInsets.all(12)),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8))),
            ),
          ),
        ],
      ),
    );
  }
}
