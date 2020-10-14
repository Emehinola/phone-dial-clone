import 'package:flutter/material.dart';
import 'package:phone/custom_widgets/icons_designs.dart';

class FavoriteScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        Container(
          child: Column(
            children: [
              SizedBox(height: 150),
              Column(
                children: [
                  Favorite(),
                  SizedBox(height: 10),
                  Text(
                    'No Favorites',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(height: 15),
                  Text('ADD A FAVORITE',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.greenAccent))
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
