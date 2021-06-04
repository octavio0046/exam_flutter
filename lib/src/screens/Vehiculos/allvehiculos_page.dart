import 'package:exam_flutter/src/screens/Vehiculos/addvehiculos_page.dart';
import 'package:exam_flutter/src/screens/Vehiculos/detallesvehiculos_page.dart';
import 'package:flutter/material.dart';

class AllVehiculosPage extends StatelessWidget {
  final cotizacionesList = [
    'Toyota Runer 2021',
    'Honda Civic 2022',
    'Kia Picanto 2011',
    'Hiunday Elantra 2011',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Vehiculos"),
      ),
      body: ListView(
        //children: _generarItems(),
        children: _crearItemsCorta(context),
      ),
      // body: Padding(padding: const EdgeInsets.all(16.0)),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => showVehiculoAdd(context),
      ),
    );
  }

  void showVehiculoAdd(context) {
    final route = MaterialPageRoute(builder: (context) {
      return AddVehiculosPage();
    });

    Navigator.push(context, route);
  }

  // cargarData() {
  //   rootBundle.loadString('data/menu_opts.json').then((data) {
  //     Map dataMap = json.decode(data);
  //     print(dataMap['nombreApp']);
  //   });
  // }

  List<Widget> _crearItemsCorta(BuildContext context) {
    var varwidgets = cotizacionesList.map((item) {
      return Column(
        children: [
          ListTile(
            title: Text(item + '!'),
            subtitle: Text('SubTitulo'),
            leading: Icon(Icons.accessibility),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () => showGetDetallesVehiculos(context),
          ),
          Divider()
        ],
      );
    }).toList();
    return varwidgets;
  }

  void showGetDetallesVehiculos(context) {
    final route = MaterialPageRoute(builder: (context) {
      return DetatallesVehiculos();
    });

    Navigator.push(context, route);
  }
}
