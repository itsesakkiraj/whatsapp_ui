import 'package:flutter/material.dart';
import 'package:whatsapp_ui/models/callmodels.dart';

class calls extends StatelessWidget {
  const calls({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: callsData.length,
        itemBuilder: (context, i) => new Column(
              children: [
                Divider(
                  height: 0.5,
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.grey,
                    backgroundImage: NetworkImage(
                      callsData[i].pic,
                    ),
                  ),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        callsData[i].name,
                      ),
                      Icon(
                        i % 2 == 0 ? Icons.call : Icons.video_call,
                        color: Colors.teal,
                      ),
                    ],
                  ),
                  subtitle: Text(
                    callsData[i].time,
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ));
  }
}
