import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:phone/fetchers/fetchers.dart';
import 'package:phone/models/call_history_model.dart';
import 'package:phone/custom_widgets/widgets.dart';

class CallHistoryScreen extends StatefulWidget {
  @override
  _CallHistoryState createState() => _CallHistoryState();
}

class _CallHistoryState extends State<CallHistoryScreen> {
  final List<CallHistory> histories = getCallHistories();

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: AlwaysScrollableScrollPhysics(),
      shrinkWrap: true,
      children: [
        Container(
          color: Colors.grey[200],
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  child: Text('Today',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.grey)),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 10, top: 10),
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: histories.length,
                        itemBuilder: (BuildContext context, int index) {
                          return CustomTile(
                            typeColor: histories[index].type == 'missed'
                                ? Colors.white
                                : Colors.white,
                            color: index < 5
                                ? Colors.blue[500]
                                : Colors.lightGreen,
                            date: histories[index].date,
                            icon: histories[index].type == 'missed'
                                ? Icons.call_missed
                                : Icons.call_made,
                            time: 'Today',
                            title: histories[index].number,
                            simNo: index % 2 == 0 ? '2' : '1',
                            bg: histories[index].type == 'missed'
                                ? Colors.red
                                : Colors.grey[400],
                          );
                        })
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
