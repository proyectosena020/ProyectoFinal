import 'package:flutter/material.dart';

class AnfitrionInfo extends StatefulWidget {
  const AnfitrionInfo({Key? key}) : super(key: key);

  @override
  State<AnfitrionInfo> createState() => _AnfitrionInfoState();
}

class _AnfitrionInfoState extends State<AnfitrionInfo> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0)),
      title: Text("Epa"),
      content: Container(
        width: 550,
        height: 750,
        child: Text("a"),
      ),

    );
  }
}
