import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tabbar/tabbar_controller.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);
  final _controller = Get.put(CustomTabController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20, top: 10),
              child: Container(
                padding: EdgeInsets.only(left: 5, right: 5, top: 5, bottom: 5),
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(color: Colors.black.withOpacity(0.7))),
                child: TabBar(
                  indicatorColor: Colors.transparent,
                  controller: _controller.tabController,
                  labelColor: Colors.green,
                  unselectedLabelColor: Colors.black,
                  indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      gradient: LinearGradient(
                          colors: [Colors.red, Colors.orange])),
                  tabs: [
                    Container(
                        height: 45,
                        // decoration:  BoxDecoration(
                        //     borderRadius: BorderRadius.circular(25),
                        //     gradient: LinearGradient(
                        //         colors: [Colors.red, Colors.orange])),
                        child: Center(child: Text("Flutter"))),
                    Container(
                        height: 45,
                        // decoration: BoxDecoration(
                        //     borderRadius: BorderRadius.circular(25),
                        //     gradient: LinearGradient(
                        //         colors: [Colors.red, Colors.orange])),
                        child: Center(child: Text("TabBar"))),
                  ],
                ),
              ),
            ),
          ],
        ),
        Expanded(
          child: Container(
            child: TabBarView(
              controller: _controller.tabController,
              children: [
                Center(
                  child: Text("data"),
                ),
                Center(
                  child: Text("data"),
                )
              ],
            ),
          ),
        )
      ]),
    );
  }
}
