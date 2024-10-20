import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Value Notifier',
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
        backgroundColor: Colors.pink,
      ),
      body: ValueListenableBuilder(
        valueListenable: number,
        builder: (context, value, child) {
          return Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.pink,
                  child: IconButton(
                    onPressed: inc,
                    icon: const Icon(
                      Icons.add,
                      size: 30,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 40,
                ),
                Text(
                  '${value.toString()}',
                  style: const TextStyle(fontSize: 120),
                ),
                const SizedBox(
                  width: 40,
                ),
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.pink,
                  child: IconButton(
                    onPressed: dec,
                    icon: const Icon(
                      Icons.remove,
                      size: 30,
                    ),
                  ),
                )
              ],
            ),
          );
        },
        //child:
      ),
    );
  }

  void inc() {
    number.value++;
  }

  void dec() {
    number.value--;
  }
}

ValueNotifier<int> number = ValueNotifier<int>(0);
