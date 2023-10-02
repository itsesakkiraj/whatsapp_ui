import 'package:flutter/material.dart';
import 'package:whatsapp_ui/models/callmodels.dart';
import 'package:whatsapp_ui/models/statusmodels.dart';
import 'package:whatsapp_ui/tabs/calls.dart';

class status extends StatelessWidget {
  const status({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
                child: ListTile(
              leading: Container(
                width: 50.0,
                child: Stack(
                  children: [
                    ClipOval(
                      child: Image.network(
                        "https://randomuser.me/api/portraits/men/10.jpg",
                        width: 50,
                        height: 50,
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        width: 20.0,
                        height: 20.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.teal,
                        ),
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 15,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              title: Text(
                "My Status",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                'Tab to add Status Update',
              ),
            ))
          ],
        ),
        SizedBox(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            height: 30,
            width: double.infinity,
            child: Text(
              'Recent Updates',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
        ),
        Expanded(
            child: ListView.builder(
                itemCount: statusdata.length,
                itemBuilder: (context, i) => new Column(
                      children: [
                        new Divider(
                          height: 0.3,
                        ),
                        ListTile(
                          leading: CircleAvatar(
                            backgroundColor: Colors.grey,
                            backgroundImage: NetworkImage(
                              statusdata[i].pic,
                            ),
                          ),
                          title: Text(
                            statusdata[i].name,
                          ),
                          subtitle: Text(
                            statusdata[i].time,
                          ),
                        )
                      ],
                    )))
      ],
    );
  }
}
