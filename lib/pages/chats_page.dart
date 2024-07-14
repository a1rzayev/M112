import 'package:flutter/material.dart';

class ChatsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chats'),
      ),
      body: ListView.builder(
        itemCount: 10, // Replace with your data source length
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.chat),
            title: Text('Chat $index'),
            subtitle: Text('Last message preview...'),
            onTap: () {
              // Navigate to chat detail
            },
          );
        },
      ),
    );
  }
}
