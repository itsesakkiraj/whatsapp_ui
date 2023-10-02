import 'package:flutter/material.dart';
import 'package:whatsapp_ui/models/chatmodels.dart';

class chats extends StatelessWidget {
  const chats({super.key});

  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
        itemCount: chatsData.length,
        itemBuilder: (context, i) => new Column(
              children: [
                Divider(
                  height: 0.3,
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.grey,
                    backgroundImage: NetworkImage(chatsData[i].pic),
                  ),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        chatsData[i].name,
                        style: TextStyle(
                            fontSize: 14.0, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        chatsData[i].time,
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 13,
                        ),
                      )
                    ],
                  ),
                  subtitle: Text(
                    chatsData[i].msg,
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                )
              ],
            ));
  }
}
