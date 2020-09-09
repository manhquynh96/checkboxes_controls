import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Checkboxes Demo',
      debugShowCheckedModeBanner: false,
      home: ChechboxesDemo(),
    );
  }
}

class ChechboxesDemo extends StatefulWidget {
  @override
  _ChechboxesDemoState createState() => _ChechboxesDemoState();
}

class _ChechboxesDemoState extends State<ChechboxesDemo> {
  List<bool> checked = [true, true, false, false, true];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Checkboxes Demo')),
      body: Column(
        children: [
          for (var i = 0; i < 5; i += 1)
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Checkbox(
                  value: checked[i],
                  onChanged: i == 4
                      ? null
                      : (bool value) {
                          setState(() {
                            checked[i] = value;
                          });
                        },
                  tristate: i == 1,
                ),
                Text(
                  'Checkbox ${i + 1}',
                  style: Theme.of(context)
                      .textTheme
                      .subtitle1
                      .copyWith(color: i == 4 ? Colors.black38 : Colors.black),
                )
              ],
            )
        ],
      ),
    );
  }
}
