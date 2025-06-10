import 'package:flutter/material.dart';

class SearchButton extends StatelessWidget {
  final TextEditingController _searchController;

  SearchButton({super.key, required TextEditingController searchController})
      : _searchController = searchController;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.only(left: 10, right: 10, bottom: 5),
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Colors.black,
          style: BorderStyle.solid,
        ),
        borderRadius: BorderRadiusDirectional.circular(50),
      ),
      child: TextField(
        controller: _searchController,
        decoration: InputDecoration(
          hintText: 'Search Groceries,Fruits..',
          border: InputBorder.none,
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          suffixIcon: Icon(Icons.search),
          contentPadding: EdgeInsets.all(10),
          fillColor: Colors.greenAccent,
        ),
      ),
    );
  }
}
