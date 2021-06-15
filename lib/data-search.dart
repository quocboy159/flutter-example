import 'package:flutter/material.dart';

class DataSearch extends SearchDelegate<String> {
  final cities = [
    "HCMC",
    "Tay Ninh",
    "Hai Phong",
    "Hue",
    "Dang Nang",
    "Ha Noi"
  ];
  final recentCities = ["HCMC", "Ha Noi"];
  String _selectedItem = "";

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = "";
          },
          icon: Icon(Icons.clear))
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          close(context, "");
        },
        icon: AnimatedIcon(
            icon: AnimatedIcons.menu_arrow, progress: transitionAnimation));
  }

  @override
  Widget buildResults(BuildContext context) {
    return Center(
      child: Container(
        height: 100.0,
        width: 100.0,
        child: Card(
          color: Colors.red[600],
          child: Center(child: Text(_selectedItem)),
        ),
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionList = query.isEmpty
        ? recentCities
        : cities
            .where((element) =>
                element.toLowerCase().startsWith(query.toLowerCase()))
            .toList();
    return ListView.builder(
      itemBuilder: (context, index) => ListTile(
        onTap: () {
          _selectedItem = suggestionList[index];
          showResults(context);
        },
        title: RichText(
          text: TextSpan(
            text: suggestionList[index].substring(0, query.length),
            style:
                TextStyle(fontWeight: FontWeight.bold, color: Colors.red[700]),
            children: [
              TextSpan(
                  text: suggestionList[index].substring(query.length),
                  style: TextStyle(
                      fontWeight: FontWeight.normal, color: Colors.black)),
            ],
          ),
        ),
        leading: Icon(Icons.location_city),
      ),
      itemCount: suggestionList.length,
    );
  }
}
