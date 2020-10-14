import 'package:flutter/material.dart';

class Top extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Column(
        children: [
          Container(
            height: 30,
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.grey[200],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                    Text('Search for 710 contacts',
                        style: TextStyle(color: Colors.grey))
                  ],
                ),
                Icon(
                  Icons.mic,
                  color: Colors.black54,
                )
              ],
            ),
          ),
          SizedBox(height: 15),
          Row(
            children: [
              Container(
                  height: 30,
                  width: 30,
                  padding: EdgeInsets.all(3),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.greenAccent),
                  child: Icon(Icons.add, color: Colors.white)),
              SizedBox(width: 15),
              Text('Create new contact')
            ],
          )
        ],
      ),
    );
  }
}
