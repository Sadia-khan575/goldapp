/*import 'package:flutter/material.dart';

class EvenOddChecker extends StatefulWidget {
  const EvenOddChecker({super.key});

  @override
  State<EvenOddChecker> createState() => _EvenOddCheckerState();
}

class _EvenOddCheckerState extends State<EvenOddChecker> {
  TextEditingController numberController = TextEditingController();
  String result = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          int number = int.parse(numberController.text);
          if (number % 2 == 0) {
            result = "$number is Even";
          } else {
            result = "$number is Odd";
          }
          setState(() {});
        },
        child: const Icon(
          Icons.check,
        ),
        backgroundColor: Colors.pink,
      ),

      appBar: AppBar(
        title: const Text(
          'Even or Odd Number',
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(5),
              ),
              child: TextFormField(
                style: const TextStyle(
                  color: Colors.red,
                ),
                controller: numberController,
                decoration: const InputDecoration(
                    hintText: 'Enter a number',
                    hintStyle: TextStyle(
                      color: Colors.greenAccent,
                    )),
                keyboardType: TextInputType.number,
              ),
            ),
            const SizedBox(height: 20),
            Text(result,
                style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.orange)),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: EvenOddChecker(),
  ));
}*/
