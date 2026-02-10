import 'package:flutter/material.dart';

Widget buildAvatar() {
  return CircleAvatar(
    radius: 55,
    backgroundColor: Colors.grey[300], // tło jeśli obrazka nie będzie
    child: ClipOval(
      child: Image.asset(
        'assets/images/profile.jpg',
        width: 110,
        height: 110,
        fit: BoxFit.cover,
        errorBuilder: (context, error, stackTrace) {
          // fallback, jeśli obrazka nie ma
          return Icon(Icons.person, size: 80, color: Colors.grey[700]);
        },
      ),
    ),
  );
}
