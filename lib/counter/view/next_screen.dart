import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_lesson/counter/provider/counter_model.dart';

class NextScreen extends StatelessWidget {
  const NextScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Next Screen'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.safety_divider,
          color: Colors.white,
        ),
        onPressed: () => context.read<CounterModel>().bagiDua(),
      ),
      body: Center(
        child: Text('${context.watch<CounterModel>().counter}'),
      ),
    );
  }
}
