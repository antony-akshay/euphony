import 'package:evm/application/bloc/home_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeWidgets {
  static void usernamemodule(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => BlocConsumer<HomeBloc, HomeState>(
        listener: (context, state) {
          state.authFailureOrSuccessOption.fold(() {}, (either) {
            return either.fold((failure) {
              final message = failure.map(
                  serverError: (_) => 'server error',
                  usernameIsAlreadyInUse: (_) => "usernameIsAlreadyInUse");
              ScaffoldMessenger.of(context)
                  .showSnackBar(SnackBar(content: Text(message)));
            }, (r) {});
          });
        },
        builder: (context, state) {
          return AlertDialog(
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
                      onChanged: (value) {
                        // context.read<HomeBloc>().add(UsernameChanged(value));
                      },
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
                        // context.read<HomeBloc>().add(SubmitUsername());
                      },
                      child: const Text('Submit'),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
