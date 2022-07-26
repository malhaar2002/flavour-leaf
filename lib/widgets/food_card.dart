import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ticci/models/menu_item_model.dart';

class FoodCard extends StatefulWidget {
  FoodCard({super.key, required this.menuItem});
  final MyMenuItem menuItem;
  List<MyMenuItem> cartItems = [];

  @override
  State<FoodCard> createState() => _FoodCardState();
}

class _FoodCardState extends State<FoodCard> {
  @override
  Widget build(BuildContext context) {
    return Provider<List<MyMenuItem>>(
      create:(context) => widget.cartItems,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(widget.menuItem.imageUrl),
                radius: 50,
              ),
              const SizedBox(height: 25),
              Align(
                alignment: Alignment.center,
                child: Text(
                  widget.menuItem.name,
                  style: const TextStyle(
                    fontFamily: 'SF-Pro-Rounded',
                    fontSize: 18,
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Text(
                '₹${widget.menuItem.price}',
                style: const TextStyle(
                  fontFamily: 'SFProText',
                  fontSize: 15,
                ),
              ),
              const SizedBox(height: 10),
              widget.menuItem.quantity == 0
                  ? ElevatedButton(
                      onPressed: () {
                        if (widget.menuItem.quantity == 0) {
                          setState(() {
                            widget.menuItem.quantity++;
                            widget.cartItems.add(widget.menuItem);
                          });
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFFA4A0C),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: const Text(
                        'Add to Cart',
                        style: TextStyle(
                          fontFamily: 'SFProText',
                          fontSize: 10,
                          color: Colors.white,
                        ),
                      ))
                  : Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Container(
                        height: 35,
                        width: 90,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xFFFA4A0C),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  widget.menuItem.quantity--;
                                  widget.cartItems.add(widget.menuItem);
                                });
                              },
                              child: const Text(
                                '-',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'SFProText',
                                  fontSize: 20,
                                ),
                              ),
                            ),
                            Text(
                              widget.menuItem.quantity.toString(),
                              style: const TextStyle(
                                color: Colors.white,
                                fontFamily: 'SFProText',
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  widget.menuItem.quantity++;
                                  widget.cartItems.add(widget.menuItem);
                                });
                              },
                              child: const Text(
                                '+',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'SFProText',
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                  ),
            ],
          ),
        ),
      ),
    );
  }
}