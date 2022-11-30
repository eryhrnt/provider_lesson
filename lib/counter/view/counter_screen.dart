import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_lesson/counter/provider/counter_model.dart';
import 'package:provider_lesson/counter/view/next_screen.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<CounterModel>(builder: (context, model, child) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Counter'),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
          onPressed: () {
            model.counter = model.counter + 1;
          },
        ),
        body: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Current Counter',
                style: TextStyle(fontSize: 16),
              ),
              Text(
                model.counter.toString(),
                style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => NextScreen(),
                    ),
                  );
                },
                child: Text('Next Screen'),
              ),
            ],
          ),
        ),
      );
    });
  }
}
