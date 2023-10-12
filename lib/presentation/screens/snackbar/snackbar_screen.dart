import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackBarScreen extends StatelessWidget {
  static const name = 'snackbar-screen';
  const SnackBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbars and Dialogs'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            TextButton(
              onPressed: () => showCustomActionSnackBar(context),
              child: const Text('Show Action SnackBar'),
            ),
            FilledButton.tonal(
              onPressed: () {
                showAboutDialog(context: context, children: [
                  const Text('Velit nisi fugiat mollit adipisicing id.')
                ]);
              },
              child: const Text('Licenses used'),
            ),
            FilledButton.tonal(
              onPressed: () => openDialog(context),
              child: const Text('Show dialog'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => showCustomSnackBar(context),
        label: const Text('Show Snackbar'),
        icon: const Icon(Icons.remove_red_eye_outlined),
      ),
    );
  }
}

void openDialog(BuildContext context) {
  showDialog(
    // * só sai se clicar em alguma opcao das actions
    barrierDismissible: false,
    context: context,
    builder: (context) {
      return AlertDialog(
        title: const Text('Algum conteudo'),
        content: const Text('Conteudo da parte de baixo'),
        actions: [
          TextButton(
            onPressed: () {
              context.pop();
            },
            child: const Text('Cancel'),
          ),
          FilledButton(
            onPressed: () {
              context.pop();
            },
            child: const Text('Accept'),
          ),
        ],
      );
    },
  );
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
