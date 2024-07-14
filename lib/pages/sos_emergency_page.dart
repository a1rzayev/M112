import 'package:flutter/material.dart';

class SOSEmergencyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SOS Emergency'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.warning, size: 100, color: Colors.red),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // SOS alert logic
              },
              child: Text('Send SOS Alert'),
            ),
            SizedBox(height: 20),
            Text('Your location will be shared.'),
          ],
        ),
      ),
    );
  }
}
