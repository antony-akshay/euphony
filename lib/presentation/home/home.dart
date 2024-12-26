import 'package:flutter/material.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: TextButton(
            onPressed: () => showDialog(
              context: context,
              builder: (context) => AlertDialog(
                backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                content: SizedBox(
                  width: 200,
                  height: 150,
                  child: Form(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    child: ListView(
                      children: [
                        TextFormField(
                          decoration: const InputDecoration(
                            hintText: 'Enter username',
                            hintStyle: TextStyle(
                              color: Color.fromARGB(255, 170, 167, 167),
                            ),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Username cannot be empty.';
                            }
                            final usernameRegex = RegExp(r'^[a-z]+$');
                            if (!usernameRegex.hasMatch(value)) {
                              return 'Username must be lowercase.';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 16),
                        TextButton(
                          onPressed: () {
                            //api
                          },
                          child: const Text('Submit'),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            child: const Text('Open Form'),
          ),
        ),
      ),
    );
  }
}
