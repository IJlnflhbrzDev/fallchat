import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        actions: [
          Container(
            width: 40,
            margin: EdgeInsets.all(8.0),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.red[900],
            ),
            child: IconButton(
              icon: Transform.rotate(
                angle: 3.1,
                child: Icon(Icons.logout),
              ),
              color: Colors.white,
              onPressed: () {
                Get.snackbar('title', 'message');
              },
            ),
          )
        ],
      ),
      body: IntrinsicHeight(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  Expanded(
                    child: Image.asset(
                      'assets/noimage.png',
                      width: Get.width * 0.4,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Lorem Ipsum',
                    style: TextStyle(
                      fontSize: 35,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    'lorem.ipsum@gmail.com',
                    style: TextStyle(
                      fontSize: 17.0,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Expanded(
              flex: 2,
              child: Container(
                width: Get.width,
                child: Column(
                  children: [
                    ListTile(
                      title: Text(
                        'Update Status',
                      ),
                      leading: CircleAvatar(),
                      trailing: Icon(Icons.play_arrow, color: Colors.black),
                    ),
                    ListTile(
                      title: Text(
                        'Change Profile',
                      ),
                      leading: CircleAvatar(),
                      trailing: Icon(Icons.play_arrow, color: Colors.black),
                    ),
                    ListTile(
                      title: Text(
                        'Change Theme',
                      ),
                      leading: CircleAvatar(),
                      trailing: Text('Light'),
                    ),
                  ],
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Fallchat App',
                  style: TextStyle(
                    fontSize: 19,
                  ),
                ),
                SizedBox(height: 5),
                Text('v.1.0', style: TextStyle(fontSize: 17)),
                SizedBox(height: 30)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
