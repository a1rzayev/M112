import 'package:flutter/material.dart';
import '../enums/emergency_type.dart';

class EmergencyAlertsPage extends StatelessWidget {
  final List<EmergencyType> emergencyTypes = EmergencyType.values;

  String getEmergencyTypeName(EmergencyType type) {
    switch (type) {
      case EmergencyType.Fire:
        return 'Fire';
      case EmergencyType.Medical:
        return 'Medical';
      case EmergencyType.Police:
        return 'Police';
      case EmergencyType.NaturalDisaster:
        return 'Natural Disaster';
      case EmergencyType.Other:
        return 'Other';
      default:
        return '';
    }
  }

  IconData getEmergencyTypeIcon(EmergencyType type) {
    switch (type) {
      case EmergencyType.Fire:
        return Icons.local_fire_department;
      case EmergencyType.Medical:
        return Icons.local_hospital;
      case EmergencyType.Police:
        return Icons.local_police;
      case EmergencyType.NaturalDisaster:
        return Icons.nature;
      case EmergencyType.Other:
        return Icons.help;
      default:
        return Icons.help;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Types of Emergency Alerts'),
      ),
      body: ListView.builder(
        itemCount: emergencyTypes.length,
        itemBuilder: (context, index) {
          EmergencyType type = emergencyTypes[index];
          return ListTile(
            leading: Icon(getEmergencyTypeIcon(type)),
            title: Text(getEmergencyTypeName(type)),
            subtitle: Text('Description of ${getEmergencyTypeName(type)} emergency.'),
            onTap: () {
              // Handle tap on emergency type
            },
          );
        },
      ),
    );
  }
}
