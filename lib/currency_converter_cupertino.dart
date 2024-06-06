import 'package:flutter/cupertino.dart';

class CurrencyConverterCupertinoPagState extends StatefulWidget {
  const CurrencyConverterCupertinoPagState({super.key});

  @override
  State<CurrencyConverterCupertinoPagState> createState() =>
      __CurrencyConverterCupertinoPagStateState();
}

class __CurrencyConverterCupertinoPagStateState
    extends State<CurrencyConverterCupertinoPagState> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();

  void convert() {
    setState(() {
      result = double.parse(textEditingController.text) * 81;
    });
  }

  @override
  void initState() {
    super.initState();
    print("Init State Called");
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Currency Converter'),
        // centerTitle: true,
        backgroundColor: Color.fromARGB(255, 248, 217, 156),
        // elevation: 0,
      ),
      backgroundColor: const Color.fromARGB(255, 248, 217, 156),
      child: Padding(
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
                    color: CupertinoColors.black),
              ),
              CupertinoTextField(
                  controller: textEditingController,
                  style: const TextStyle(color: CupertinoColors.black),
                  decoration: BoxDecoration(
                    color: CupertinoColors.white,
                    border: Border.all(color: CupertinoColors.black),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  placeholder: "Please enter the amount in INR",
                  prefix: const Icon(CupertinoIcons.money_dollar,
                      color: CupertinoColors.black),
                  keyboardType: const TextInputType.numberWithOptions(
                    decimal: true,
                    signed: false,
                  )),
              //button
              //raised
              //Appears like text
              const SizedBox(
                height: 10,
              ),
              CupertinoButton(
                  onPressed: convert,
                  color: CupertinoColors.black,
                  // minSize: 50,
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
