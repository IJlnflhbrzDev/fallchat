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
        onTap: () {},
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
      floatingActionButton: Container(
        width: 60,
        height: 60,
        child: ElevatedButton(
            child: Icon(Icons.chat, size: 30),
            onPressed: () => Get.toNamed(Routes.CHAT_ROOM),
            style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all<Color>(Color(0XFFDC493C)),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(1000.0),
                ),
              ),
            )),
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
                      onTap: () {
                        Get.toNamed(
                          Routes.PROFILE,
                        );
                      },
                      child: Icon(Icons.account_circle,
                          size: 35.0, color: Color(0XFFDC493C)),
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
