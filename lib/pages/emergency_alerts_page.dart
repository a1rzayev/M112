import 'package:flutter/material.dart';

class EmergencyAlertsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Types of Emergency Alerts'),
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Emergency Type $index'),
            subtitle: Text('Description of emergency type $index'),
            onTap: () {
              // Navigate to alert settings
            },
          );
        },
      ),
    );
  }
}
