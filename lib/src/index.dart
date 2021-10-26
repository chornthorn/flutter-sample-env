import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_flavor/flutter_flavor.dart';

class AppIndex extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlavorBanner(
      child: MaterialApp(
        title: 'Material App',
        home: Scaffold(
          appBar: AppBar(
            title: Text('Material App Bar'),
          ),
          body: Center(
            child: Container(
              child: Text('Hello ${dotenv.get('ENVIRONMENT')}'),
            ),
          ),
        ),
      ),
    );
  }
}
