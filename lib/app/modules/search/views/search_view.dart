import 'package:fallchat/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/search_controller.dart';

class SearchView extends GetView<SearchController> {
  @override
  Widget build(BuildContext context) {
    final List<Widget> mychats = List.generate(
      20,
      (index) => ListTile(
        leading: CircleAvatar(
          child: Image.asset('assets/noimage.png'),
          radius: 25,
        ),
        title: Text('Orang Ke-${index + 1}@gmail.com'),
        subtitle: Text(
          'Status Ke-$index',
          style: TextStyle(fontSize: 16),
        ),
        trailing: GestureDetector(
          onTap: () => Get.toNamed(Routes.CHAT_ROOM),
          child: Chip(
            label: Text('Message'),
          ),
        ),
      ),
    );
    return Scaffold(
      appBar: PreferredSize(
          child: AppBar(
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {},
            ),
            backgroundColor: Colors.red,
            title: Text('SearchView'),
            centerTitle: true,
            flexibleSpace: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.fromLTRB(20, 50, 20, 20),
                child: TextField(
                  cursorColor: Colors.red[900],
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    hintText: 'Search friend here',
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: BorderSide(color: Colors.red, width: 1),
                    ),
                    suffixIcon: InkWell(
                      onTap: () {},
                      borderRadius: BorderRadius.circular(59),
                      child: Icon(
                        Icons.search,
                        color: Colors.red[900],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),

          // Property ini untuk memberikan height tambahan kepada appbar
          preferredSize: Size.fromHeight(130)),
      body: Center(
        child: ListView.builder(
          itemCount: mychats.length,
          itemBuilder: (BuildContext context, int index) => mychats[index],
        ),
      ),
    );
  }
}
