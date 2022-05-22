import 'package:flutter/material.dart';

class PredictionsScreen extends StatefulWidget {
  const PredictionsScreen({Key? key}) : super(key: key);

  @override
  State<PredictionsScreen> createState() => _PredictionsScreenState();
}

class _PredictionsScreenState extends State<PredictionsScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('PREDICTIONS'),
    );
  }
}
