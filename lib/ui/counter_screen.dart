import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter Example'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('0', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.blue),),
            const SizedBox(height: 30),
            Row(
              children: [
                ElevatedButton(onPressed: (){}, child: Icon(Icons.add)),
                const SizedBox(width: 20),
                ElevatedButton(onPressed: (){}, child: Icon(Icons.refresh)),
                const SizedBox(width: 20),
                ElevatedButton(onPressed: (){}, child: Icon(CupertinoIcons.minus)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
