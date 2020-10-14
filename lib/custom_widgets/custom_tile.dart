import 'package:flutter/material.dart';
import 'package:phone/custom_widgets/widgets.dart';

class CustomTile extends StatelessWidget {
  String title, date, time, simNo;
  Color color, typeColor, bg;
  IconData icon;

  CustomTile(
      {this.title,
      this.date,
      this.time,
      this.color,
      this.icon,
      this.typeColor,
      this.bg,
      this.simNo});
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                contactAvartar(color),
                SizedBox(
                  width: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        callType(icon, typeColor, bg),
                        SizedBox(width: 5),
                        sim(simNo),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Nigeria',
                          style: TextStyle(color: Colors.grey[300]),
                        )
                      ],
                    )
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  date,
                  style: TextStyle(color: Colors.grey),
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.arrow_drop_down, color: Colors.grey))
              ],
            )
          ],
        ),
        Divider(
          indent: 60,
          endIndent: 10,
        )
      ],
    ));
  }
}
