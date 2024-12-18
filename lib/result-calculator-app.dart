/*import 'package:flutter/material.dart';

class ResultCalculator extends StatefulWidget {
  const ResultCalculator({super.key});

  @override
  State<ResultCalculator> createState() => _ResultCalculatorState();
}

class _ResultCalculatorState extends State<ResultCalculator> {
  TextEditingController englishMarksController = TextEditingController();
  TextEditingController urduMarksController = TextEditingController();
  TextEditingController physicsMarksController = TextEditingController();
  TextEditingController chemistryMarksController = TextEditingController();
  TextEditingController mathsMarksController = TextEditingController();
  double totalMarks = 500.0;
  double obtainedMarks = 0.0;
  double average = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            double englishMarks = double.parse(englishMarksController.text);
            double urduMarks = double.parse(urduMarksController.text);
            double physicsMarks = double.parse(physicsMarksController.text);
            double chemistryMarks = double.parse(chemistryMarksController.text);
            double mathsMarks = double.parse(mathsMarksController.text);

            obtainedMarks = englishMarks + urduMarks + physicsMarks + chemistryMarks + mathsMarks;
            average = (obtainedMarks / totalMarks) * 100;

            setState(() {});
          },
          child: const Icon(
            Icons.calculate_sharp,
          ),
          backgroundColor: Colors.yellow,
        ),
        appBar: AppBar(
          title: const Text(
            '1st Year Result Calculator',
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50.0),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.red.shade900,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: TextFormField(
                  style: const TextStyle(
                    color: Colors.black,
                  ),
                  controller: englishMarksController,
                  decoration: const InputDecoration(
                    hintText: 'Enter English Marks',
                    hintStyle: TextStyle(
                      color: Colors.yellow,
                    ),
                  ),
                  keyboardType: TextInputType.number,
                ),
              ),
              const SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                  color: Colors.red.shade900,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: TextFormField(
                  style: const TextStyle(
                    color: Colors.black,
                  ),
                  controller: urduMarksController,
                  decoration: const InputDecoration(
                    hintText: 'Enter Urdu Marks',
                    hintStyle: TextStyle(
                      color: Colors.yellow,
                    ),
                  ),
                  keyboardType: TextInputType.number,
                ),
              ),
              const SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                  color: Colors.red.shade900,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: TextFormField(
                  style: const TextStyle(
                    color: Colors.black,
                  ),
                  controller: physicsMarksController,
                  decoration: const InputDecoration(
                    hintText: 'Enter Physics Marks',
                    hintStyle: TextStyle(
                      color: Colors.yellow,
                    ),
                  ),
                  keyboardType: TextInputType.number,
                ),
              ),
              const SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                  color: Colors.red.shade900,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: TextFormField(
                  style: const TextStyle(
                    color: Colors.black,
                  ),
                  controller: chemistryMarksController,
                  decoration: const InputDecoration(
                    hintText: 'Enter Chemistry Marks',
                    hintStyle: TextStyle(
                      color: Colors.yellow,
                    ),
                  ),
                  keyboardType: TextInputType.number,
                ),
              ),
              const SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                  color: Colors.red.shade900,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: TextFormField(
                  style: const TextStyle(
                    color: Colors.black,
                  ),
                  controller: mathsMarksController,
                  decoration: const InputDecoration(
                    hintText: 'Enter Maths Marks',
                    hintStyle: TextStyle(
                      color: Colors.yellow
                      ,
                    ),
                  ),
                  keyboardType: TextInputType.number,
                ),
              ),
              const SizedBox(height: 20),
              Text('Total Marks: $totalMarks',
                  style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.brown)),
              Text('Obtained Marks: $obtainedMarks',
                  style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.brown)),
              Text('Average: ${average.toStringAsFixed(2)}%',
                  style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.brown)),
            ],
          ),
        ));
  }
}

void main() {
  runApp(const MaterialApp(
    home: ResultCalculator(),
  ));
}*/
