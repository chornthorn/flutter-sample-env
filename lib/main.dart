import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_flavor/flutter_flavor.dart';

import 'src/index.dart';

void main() async {
  await dotenv.load(fileName: "env/.production.env");
  FlavorConfig(
    name: "",
    color: Colors.red,
    location: BannerLocation.bottomStart,
    variables: dotenv.env,
  );
  runApp(AppIndex());
}
