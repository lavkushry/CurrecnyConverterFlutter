import 'package:flutter/material.dart';

//Create a Variable the Stored the that need to be converted
/// Create a Function the multipy he value with the conversion rate
/// Store the Value in the Variable that we created
/// Display the Value in the Text Widget

class CurrencyConverterMaterialPage extends StatefulWidget {
  const CurrencyConverterMaterialPage({super.key});

  @override
  State<CurrencyConverterMaterialPage> createState() =>
      _CurrencyConverterMaterialPageState();
}

class _CurrencyConverterMaterialPageState
    extends State<CurrencyConverterMaterialPage> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();

  void convert() {
    setState(() {
      result = double.parse(textEditingController.text) * 81;
    });
  }

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    print("Init State Called");
  }

  @override
  Widget build(BuildContext context) {
    // print("Rebuilding CurrencyConverterMaterialPage");
    // double result = 0;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Currency Converter'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 248, 217, 156),
        elevation: 0,
      ),
      backgroundColor: const Color.fromARGB(255, 248, 217, 156),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "INR ${result != 0 ? result.toStringAsFixed(2) : result.toStringAsFixed(4)}",
                style: const TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87),
              ),
              TextField(
                controller: textEditingController,
                style: const TextStyle(color: Colors.black87),
                decoration: const InputDecoration(
                  hintText: "Please enter the amount in INR",
                  hintStyle: TextStyle(color: Colors.black26),
                  prefixIcon: Icon(Icons.attach_money, color: Colors.black87),
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.black87,
                          width: 2,
                          style: BorderStyle.solid,
                          strokeAlign: BorderSide.strokeAlignCenter),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                ),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                  signed: false,
                ),
              ),
              //button
              //raised
              //Appears like text
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: convert,
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.black87,
                    foregroundColor: Colors.white,
                    minimumSize: const Size(double.infinity, 50),
                    padding: const EdgeInsets.all(10),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  child: const Text(
                    'Convert',
                    style: TextStyle(),
                  )),
            ], //Children1
          ),
        ),
      ),
    );
  }
}

// class CurrencyConverterMaterialPagee extends StatelessWidget {
//   const CurrencyConverterMaterialPagee({super.key});

 
// }
