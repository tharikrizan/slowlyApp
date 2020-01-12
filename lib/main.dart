import 'package:flutter/material.dart';
import 'package:slowly_app/recently_received_page.dart';

void main() => runApp(SlowlyApp());

class SlowlyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   
    return MaterialApp(title: 'Slowly', home: RecentlyReceivedPage());
  }
}
