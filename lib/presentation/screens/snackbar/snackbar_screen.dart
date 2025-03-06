import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {
  static const name = 'snackbar_screen';

  const SnackbarScreen({super.key});

  void showCustomSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();

    final snackbar = SnackBar(
      content: const Text('Hola mundo'),
      action: SnackBarAction(label: 'Ok!', onPressed: () {}),
      duration: const Duration(seconds: 2),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }

  void openDialog(BuildContext context) {
    showDialog(
      context: context, 
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: const Text('¿Estás seguro?'),
        content: const Text('Mollit non culpa ullamco laborum tempor. Lorem do exercitation irure nulla sunt aliqua nostrud nostrud eiusmod duis aliquip et elit. Tempor in proident aute laboris. Quis ea ad dolor sit laborum dolor labore excepteur veniam adipisicing irure est ullamco ad.'),
        actions: [
          TextButton(onPressed: () => context.pop(), child: const Text('Cancelar'),),

          FilledButton(onPressed: () => context.pop(), child: const Text('Aceptar'))
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('SnackBars y Dialogos')),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
              onPressed: () {
                showAboutDialog(
                  context: context,
                  children: [
                    const Text(
                      'Aliqua occaecat sunt deserunt irure ea. Id excepteur quis et do in aliqua in veniam sint Lorem commodo magna fugiat. Minim enim minim dolor nulla officia ex laborum pariatur aliqua. Ad nostrud laboris qui non pariatur excepteur cupidatat ullamco occaecat officia ex do. Reprehenderit non fugiat duis anim tempor magna nostrud velit aliquip quis. Excepteur occaecat ex laboris minim eu est qui cillum amet dolore consequat.',
                    ),
                  ],
                );
              },
              child: Text('Licencias Usadas'),
            ),

            FilledButton.tonal(
              onPressed: () => openDialog(context),
              child: Text('Mostrar dialogo de pantalla'),
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton.extended(
        label: const Text('Mostrar snackbar'),
        icon: Icon(Icons.remove_red_eye_outlined),
        onPressed: () => showCustomSnackbar(context),
      ),
    );
  }
}
