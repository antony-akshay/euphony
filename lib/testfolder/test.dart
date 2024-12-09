import 'package:flutter/material.dart';

class Val extends StatelessWidget {
  Val({Key? key}) : super(key: key);

  // ValueNotifiers for independent management of counters
  final ValueNotifier<int> vipCountNotifier = ValueNotifier<int>(0);
  final ValueNotifier<int> balCountNotifier = ValueNotifier<int>(0);
  final ValueNotifier<int> floCountNotifier = ValueNotifier<int>(0);

  final TextEditingController vipController = TextEditingController();
  final TextEditingController balController = TextEditingController();
  final TextEditingController floController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[50], // Background color for styling
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Column for VIP Count
            CounterColumn(
              title: "VIP Count",
              valueNotifier: vipCountNotifier,
              controller: vipController,
            ),
            const SizedBox(width: 20),
            // Column for BAL Count
            CounterColumn(
              title: "BAL Count",
              valueNotifier: balCountNotifier,
              controller: balController,
            ),
            const SizedBox(width: 20),
            // Column for FLO Count
            CounterColumn(
              title: "FLO Count",
              valueNotifier: floCountNotifier,
              controller: floController,
            ),
          ],
        ),
      ),
    );
  }
}

class CounterColumn extends StatelessWidget {
  final String title;
  final ValueNotifier<int> valueNotifier;
  final TextEditingController controller;

  CounterColumn({
    required this.title,
    required this.valueNotifier,
    required this.controller,
    Key? key,
  }) : super(key: key);

  void _increment() {
    valueNotifier.value++;
    controller.text = valueNotifier.value.toString();
  }

  void _decrement() {
    if (valueNotifier.value > 0) {
      valueNotifier.value--;
      controller.text = valueNotifier.value.toString();
    }
  }

  void _onTextChanged(String value) {
    if (value.isNotEmpty) {
      valueNotifier.value = int.tryParse(value) ?? 0;
    } else {
      valueNotifier.value = 0;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: _decrement,
          child: const Icon(
            Icons.arrow_drop_down,
            color: Colors.black,
          ),
        ),
        ValueListenableBuilder<int>(
          valueListenable: valueNotifier,
          builder: (context, value, child) {
            return SizedBox(
              width: 50,
              child: TextFormField(
                textAlign: TextAlign.center,
                controller: controller,
                keyboardType: TextInputType.number,
                onChanged: _onTextChanged,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: "0",
                ),
              ),
            );
          },
        ),
        GestureDetector(
          onTap: _increment,
          child: const Icon(
            Icons.arrow_drop_up_outlined,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
