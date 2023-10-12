import 'package:flutter/material.dart';

class SnackBarScreen extends StatelessWidget {
  static const name = 'snackbar-screen';
  const SnackBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbars and Dialogs'),
      ),
      body: TextButton(
        onPressed: () => showCustomActionSnackBar(context),
        child: const Text('Show Action SnackBar'),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => showCustomSnackBar(context),
        label: const Text('Show Snackbar'),
        icon: const Icon(Icons.remove_red_eye_outlined),
      ),
    );
  }
}

void showCustomSnackBar(BuildContext context) {
  ScaffoldMessenger.of(context).clearSnackBars();
  const snackBar = SnackBar(
    content: Text('Hello world'),
    duration: Duration(seconds: 2),
  );
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}

void showCustomActionSnackBar(BuildContext context) {
  ScaffoldMessenger.of(context).clearSnackBars();
  final snackBar = SnackBar(
    content: const Text('Hello world'),
    action: SnackBarAction(
      label: 'Ok',
      onPressed: () {},
    ),
  );
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
