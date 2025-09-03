import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomeLocation extends StatelessWidget {
  final String? locationName;
  const HomeLocation({super.key, required this.locationName});

  @override
  Widget build(BuildContext context) {
    final df = DateFormat('dd/MM/yyyy');
    final date = df.format(DateTime.now());
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/icons/location.png',
              width: 25,
              height: 25,
              fit: BoxFit.fitHeight,
            ),
            SizedBox(width: 10),
            Text(
              locationName ?? "Unknown Location",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ],
        ),
        SizedBox(height: 17),
        Text(date, style: TextStyle(color: Colors.white, fontSize: 20)),
      ],
    );
  }
}
