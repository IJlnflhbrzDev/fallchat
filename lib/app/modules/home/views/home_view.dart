import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    final List<Widget> mychats = List.generate(
      20,
      (index) => ListTile(
        onTap: () => Get.toNamed(Routes.CHAT_ROOM),
        leading: CircleAvatar(
          child: Image.asset('assets/noimage.png'),
          radius: 25,
        ),
        title: Text('Orang Ke-$index'),
        subtitle: Text(
          'Status orang Ke-$index',
          style: TextStyle(fontSize: 16),
        ),
        trailing: Chip(
          label: Text('3'),
        ),
      ),
    ).reversed.toList();

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.toNamed(Routes.SEARCH),
        backgroundColor: Color(0XFFDC493C),
        child: Icon(
          Icons.search,
          size: 30,
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Material(
              elevation: 5,
              child: Container(
                padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Chats',
                      style:
                          TextStyle(fontSize: 35, fontWeight: FontWeight.w500),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Icon(Icons.account_circle,
                          size: 30.0, color: Color(0XFFDC493C)),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: mychats.length,
                itemBuilder: (BuildContext context, int index) =>
                    mychats[index],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
