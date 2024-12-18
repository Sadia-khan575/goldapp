import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:goldapp/redaccenttextwidget.dart';

class GoldHome extends StatefulWidget {
  const GoldHome({super.key});

  @override
  State<GoldHome> createState() => _GoldHomeState();
}

class _GoldHomeState extends State<GoldHome> {
  TextEditingController goldPriceController = TextEditingController();
  TextEditingController tolaQuantityController = TextEditingController();
  TextEditingController gramQuantityController = TextEditingController();
  TextEditingController ratiQuantityController = TextEditingController();
  double res = 0.0;
  double totalTolaPrice = 0.0;
  double totalGramPrice = 0.0;
  double totalRatiPrice = 0.0;

  // Function to reset the form fields and results
  void resetFields() {
    goldPriceController.clear();
    tolaQuantityController.clear();
    gramQuantityController.clear();
    ratiQuantityController.clear();
    setState(() {
      res = 0.0;
      totalTolaPrice = 0.0;
      totalGramPrice = 0.0;
      totalRatiPrice = 0.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Check if any field is empty
            if (goldPriceController.text.isEmpty ||
                tolaQuantityController.text.isEmpty ||
                gramQuantityController.text.isEmpty ||
                ratiQuantityController.text.isEmpty) {
              // Show error if any field is empty
              Get.snackbar(
                "Error",
                "All fields must be filled",
                icon: Icon(Icons.error_outline_sharp),
                backgroundColor: Colors.pink.withOpacity(0.3),
                duration: Duration(seconds: 3),
              );
            } else {
              // Proceed with calculation if all fields are filled
              double goldPrice = double.parse(goldPriceController.text);
              double tolaQuantity = double.parse(tolaQuantityController.text);
              double gramQuantity = double.parse(gramQuantityController.text);
              double ratiQuantity = double.parse(ratiQuantityController.text);

              // Calculate prices
              totalTolaPrice = goldPrice * tolaQuantity;
              double pricePerGram = goldPrice / 11.664;
              totalGramPrice = pricePerGram * gramQuantity;
              double pricePerRati = goldPrice / 960;
              totalRatiPrice = pricePerRati * ratiQuantity;

              // Calculate total price
              res = totalTolaPrice + totalGramPrice + totalRatiPrice;

              setState(() {});
            }
          },
          child: const Icon(
            Icons.calculate_sharp,
          ),
          backgroundColor: Colors.yellow,
        ),
        appBar: AppBar(
          title: const Text(
            'Gold App',
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50.0),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: TextFormField(
                  style: const TextStyle(
                    color: Colors.redAccent,
                  ),
                  controller: goldPriceController,
                  decoration: const InputDecoration(
                    hintText: 'Enter Total price',
                    hintStyle: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  keyboardType: TextInputType.number,
                ),
              ),
              const SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: TextFormField(
                  style: const TextStyle(
                    color: Colors.redAccent,
                  ),
                  controller: tolaQuantityController,
                  decoration: const InputDecoration(
                    hintText: 'Enter Tola quantity',
                    hintStyle: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  keyboardType: TextInputType.number,
                ),
              ),
              const SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: TextFormField(
                  style: const TextStyle(
                    color: Colors.redAccent,
                  ),
                  controller: gramQuantityController,
                  decoration: const InputDecoration(
                    hintText: 'Enter Gram quantity',
                    hintStyle: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  keyboardType: TextInputType.number,
                ),
              ),
              const SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: TextFormField(
                  style: const TextStyle(
                    color: Colors.redAccent,
                  ),
                  controller: ratiQuantityController,
                  decoration: const InputDecoration(
                    hintText: 'Enter Rati quantity',
                    hintStyle: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  keyboardType: TextInputType.number,
                ),
              ),
              const SizedBox(height: 20),
              // Display the results only if fields are filled
              Redaccenttextwidget(
                text: 'Total Price Rs. $res',
              ),
              Redaccenttextwidget(
                text: 'Tola Price Rs. $totalTolaPrice',
              ),
              Redaccenttextwidget(
                text: 'Gram Price Rs. $totalGramPrice',
              ),
              Redaccenttextwidget(
                text: 'Rati Price Rs. $totalRatiPrice',
              ),
              const SizedBox(height: 20),
              // Refresh button
              ElevatedButton(
                onPressed: resetFields,
                child: Text("Reset Fields"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue, // Set the background color
                  foregroundColor: Colors.white, // Correct parameter for text color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 12, horizontal: 30),
                ),
              )

            ],
          ),
        ));
  }
}

void main() {
  runApp(const MaterialApp(
    home: GoldHome(),
  ));
}
