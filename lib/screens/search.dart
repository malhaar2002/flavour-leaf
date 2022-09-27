import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class Search extends StatelessWidget {
  const Search({super.key});
  static const id = 'search';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () => ZoomDrawer.of(context)!.toggle(),
          icon: const Icon(Icons.menu),
        ),
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 25),
        child: TextField(
          style: const TextStyle(
            fontFamily: 'SFProText',
            fontSize: 17,
          ),
          decoration: InputDecoration(
            prefixIcon: const Icon(Icons.search),
            hintText: 'Search',
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(color: Colors.grey[100]!, width: 0.0)),
            filled: true,
            fillColor: Colors.grey[100],
          ),
          // onTap: () => showSearch(context: context, delegate: SearchPage<Person>()),
        ),
      ),
    );
  }
}
