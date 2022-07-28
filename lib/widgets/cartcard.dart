import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:ticci/models/menu_item_model.dart';
import 'package:ticci/widgets/cartcardbutton.dart';

class CartCard extends StatelessWidget {
  const CartCard({super.key, required this.cartItem});
  final MyMenuItem cartItem;

  @override
  Widget build(BuildContext context) {
    return Slidable(
      key: const ValueKey(0),
      startActionPane: ActionPane(
        motion: const ScrollMotion(),
        dismissible: DismissiblePane(onDismissed: () {}),
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
                  backgroundImage: NetworkImage(cartItem.imageUrl),
                  radius: 50,
                ),
                title: Text(
                  cartItem.name,
                  style: const TextStyle(
                    fontFamily: 'SF-Pro-Rounded',
                  ),
                ),
                subtitle: Text(
                  "₹${cartItem.price.toString()}",
                  style: const TextStyle(
                    fontFamily: 'SFProText',
                  ),
                ),
              ),
              const Align(
                alignment: Alignment.bottomRight,
                child: CartCardButton(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
