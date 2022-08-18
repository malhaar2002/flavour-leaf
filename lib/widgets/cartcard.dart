import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:ticci/controllers/cart_controller.dart';
import 'package:ticci/models/menu_item_model.dart';
import 'package:ticci/widgets/cartcardbuttonitem.dart';

class CartCard extends StatelessWidget {
  const CartCard({
    super.key,
    required this.controller,
    required this.product,
    required this.quantity,
  });
  final CartController controller;
  final MyMenuItem product;
  final int quantity;

  @override
  Widget build(BuildContext context) {
    return Slidable(
      key: UniqueKey(),
      startActionPane: ActionPane(
        motion: const ScrollMotion(),
        dismissible: DismissiblePane(onDismissed: () {
          controller.removeProduct(product);
        }),
        children: [
          SlidableAction(
            onPressed: (context) {},
            backgroundColor: const Color(0xFFFA4A0C),
            foregroundColor: const Color(0xFFFFFFFF),
            icon: Icons.delete,
            label: 'Remove',
          )
        ],
      ),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              ListTile(
                leading: CircleAvatar(
                  backgroundImage:
                      AssetImage('assets/images/food/${product.id}.jpeg'),
                  radius: 50,
                ),
                title: Text(
                  product.name,
                  style: const TextStyle(
                    fontFamily: 'SF-Pro-Rounded',
                  ),
                ),
                subtitle: Text(
                  "₹${product.price.toString()}",
                  style: const TextStyle(
                    fontFamily: 'SFProText',
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: SizedBox(
                  width: 70,
                  height: 25,
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFFA4A0C),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: () {
                            controller.decreaseQuantity(product);
                          },
                          child: const CartCardButtonItem(buttonItem: '-'),
                        ),
                        CartCardButtonItem(buttonItem: quantity.toString()),
                        GestureDetector(
                          onTap: () {
                            controller.addProduct(product);
                          },
                          child: const CartCardButtonItem(buttonItem: '+'),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
