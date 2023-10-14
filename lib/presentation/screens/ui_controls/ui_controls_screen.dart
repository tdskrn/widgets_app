import 'package:flutter/material.dart';

class UiControlsScreen extends StatelessWidget {
  static const name = 'ui-controls-screen';
  const UiControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Ui controllers'),
        ),
        body: const _UiControlsView());
  }
}

enum Transportation { car, plane, boat, submarine }

class _UiControlsView extends StatefulWidget {
  const _UiControlsView();

  @override
  State<_UiControlsView> createState() => _UiControlsViewState();
}

class _UiControlsViewState extends State<_UiControlsView> {
  bool isDeveloper = true;
  Transportation selectedTransportation = Transportation.car;

  bool wantsBreakfast = false;
  bool wantsLunch = false;
  bool wantsDinner = false;
  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        SwitchListTile(
          title: const Text('Developer Mode'),
          subtitle: const Text('Controllers +'),
          value: isDeveloper,
          onChanged: (value) {
            setState(() {
              isDeveloper = !isDeveloper;
            });
          },
        ),
        ExpansionTile(
          title: const Text(
            'Veiculo de Transporte',
          ),
          subtitle: Text('$selectedTransportation'),
          children: [
            RadioListTile(
              title: const Text('Car'),
              value: Transportation.car,
              groupValue: selectedTransportation,
              onChanged: (value) {
                setState(() {
                  selectedTransportation = Transportation.car;
                });
              },
            ),
            RadioListTile(
              title: const Text('Boat'),
              value: Transportation.boat,
              groupValue: selectedTransportation,
              onChanged: (value) {
                setState(() {
                  selectedTransportation = Transportation.boat;
                });
              },
            ),
            RadioListTile(
              title: const Text('Plane'),
              value: Transportation.plane,
              groupValue: selectedTransportation,
              onChanged: (value) {
                setState(() {
                  selectedTransportation = Transportation.plane;
                });
              },
            ),
            RadioListTile(
              title: const Text('Submarine'),
              value: Transportation.submarine,
              groupValue: selectedTransportation,
              onChanged: (value) {
                setState(() {
                  selectedTransportation = Transportation.submarine;
                });
              },
            ),
          ],
        ),
        CheckboxListTile(
          title: const Text('Breakfast'),
          value: wantsBreakfast,
          onChanged: (value) {
            setState(() {
              wantsBreakfast = !wantsBreakfast;
            });
          },
        ),
        CheckboxListTile(
          title: const Text('Lunch'),
          value: wantsLunch,
          onChanged: (value) {
            setState(() {
              wantsLunch = !wantsLunch;
            });
          },
        ),
        CheckboxListTile(
          title: const Text('Dinner'),
          value: wantsDinner,
          onChanged: (value) {
            setState(() {
              wantsDinner = !wantsDinner;
            });
          },
        ),
      ],
    );
  }
}
