import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:whatsapp_ui/tabs/calls.dart';
import 'package:whatsapp_ui/tabs/camera.dart';
import 'package:whatsapp_ui/tabs/chats.dart';
import 'package:whatsapp_ui/tabs/status.dart';

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: new ThemeData(primarySwatch: Colors.teal),
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = new TabController(length: 4, vsync: this, initialIndex: 1)
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: Text(
            "WhatsApp",
          ),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.camera_alt_outlined)),
            IconButton(onPressed: () {}, icon: Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: Icon(Icons.more_vert_outlined)),
          ],
          bottom: TabBar(
            controller: _tabController,
            tabs: [
              Icon(
                Icons.camera_enhance,
              ),
              Text("Chats"),
              Text("Status"),
              Text("Calls")
            ],
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: [
            new camera(),
            new chats(),
            new status(),
            new calls(),
          ],
        ),
        floatingActionButton: _tabController.index == 0
            ? FloatingActionButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                onPressed: () {},
                child: Icon(
                  Icons.camera,
                  color: Colors.white,
                ))
            : _tabController.index == 1
                ? FloatingActionButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    onPressed: () {},
                    child: Icon(
                      Icons.message,
                      color: Colors.white,
                    ),
                  )
                : _tabController.index == 2
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SizedBox(
                            height: 50.0,
                            width: 50.0,
                            child: FloatingActionButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              backgroundColor: Color(0xFFB2DFDB),
                              onPressed: () {},
                              child: Icon(
                                Icons.edit,
                                color: Colors.teal,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          FloatingActionButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            onPressed: () {},
                            child: Icon(
                              Icons.camera_enhance,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      )
                    : FloatingActionButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        onPressed: () {},
                        child: Icon(Icons.add_call),
                      ));
  }
}
