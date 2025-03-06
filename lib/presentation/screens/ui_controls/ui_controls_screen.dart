import 'package:flutter/material.dart';

class UiControlsScreen extends StatelessWidget {
  static const name = 'ui_controls_screen';

  const UiControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Ui Controls')),
      body: _UiControlsView(),
    );
  }
}

class _UiControlsView extends StatefulWidget {
  const _UiControlsView();

  @override
  State<_UiControlsView> createState() => _UiControlsViewState();
}

enum Transportation { car, plane, boat, submarine }

class _UiControlsViewState extends State<_UiControlsView> {

  bool isDeveloper = true;
  Transportation selectedTrasnportation = Transportation.car;
  bool wantsBreakfast = false;
  bool wantsLunch = false;
  bool wantsDinner = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        SwitchListTile(
          title: const Text('Developer mode'),
          subtitle: const Text('Controles adicionales'),
          value: isDeveloper,
          onChanged:
              (value) => setState(() {
                isDeveloper = !isDeveloper;
              }),
        ),

        ExpansionTile(
          title: const Text('Vehiculo de transporte'),
          subtitle: Text('$selectedTrasnportation'),
          children: [
            RadioListTile(
              title: const Text('By Car'),
              subtitle: const Text('Viajar en auto'),
              value: Transportation.car,
              groupValue: selectedTrasnportation,
              onChanged:
                  (value) => setState(() {
                    selectedTrasnportation = Transportation.car;
                  }),
            ),

            RadioListTile(
              title: const Text('By boat'),
              subtitle: const Text('Viajar en bote'),
              value: Transportation.boat,
              groupValue: selectedTrasnportation,
              onChanged:
                  (value) => setState(() {
                    selectedTrasnportation = Transportation.boat;
                  }),
            ),

            RadioListTile(
              title: const Text('By plane'),
              subtitle: const Text('Viajar en avion'),
              value: Transportation.plane,
              groupValue: selectedTrasnportation,
              onChanged:
                  (value) => setState(() {
                    selectedTrasnportation = Transportation.plane;
                  }),
            ),

            RadioListTile(
              title: const Text('By submarine'),
              subtitle: const Text('Viajar en submarino'),
              value: Transportation.submarine,
              groupValue: selectedTrasnportation,
              onChanged:
                  (value) => setState(() {
                    selectedTrasnportation = Transportation.submarine;
                  }),
            ),
          ],
        ),

        CheckboxListTile(
          title: const Text('Quiere desayuno?'),
          value: wantsBreakfast, 
          onChanged: (value) => setState(() {
            wantsBreakfast = !wantsBreakfast;
          }),
        ),

        CheckboxListTile(
          title: const Text('Quiere almuerzo?'),
          value: wantsLunch, 
          onChanged: (value) => setState(() {
            wantsLunch = !wantsLunch;
          }),
        ),

        CheckboxListTile(
          title: const Text('Quiere cena?'),
          value: wantsDinner, 
          onChanged: (value) => setState(() {
            wantsDinner = !wantsDinner;
          }),
        )
      ],
    );
  }
}
