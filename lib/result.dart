import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int result;
  Result(this.result, this.reset);
  final VoidCallback reset;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Final Score: " + result.toString()),
        ElevatedButton(onPressed: reset, child: const Text("Reset!")),
      ],
    );
  }
}
