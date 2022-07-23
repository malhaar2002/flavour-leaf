import 'package:flutter/material.dart';

class FoodCard extends StatelessWidget {
  const FoodCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30)
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const CircleAvatar(
              backgroundImage: NetworkImage('https://images.unsplash.com/photo-1613564834361-9436948817d1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=743&q=80'),
              radius: 50,
            ),
            const SizedBox(height: 25),
            const Text(
              'Margherita Pizza',
              style: TextStyle(
                fontFamily: 'SF-Pro-Rounded',
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 15),
            const Text(
              '₹150',
              style: TextStyle(
                fontFamily: 'SFProText',
                fontSize: 15,
                color: Color(0xFFFA4A0C),
              ),
            ),
            const SizedBox(height: 10),
            Align(
              alignment: Alignment.bottomRight,
              child: FloatingActionButton(
                backgroundColor: const Color(0xFFFA4A0C),
                child: const Icon(Icons.add),
                onPressed: (){}
              )
            )
          ],
        ),
      ),
    );
  }
}