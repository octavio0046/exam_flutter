import 'package:exam_flutter/src/screens/cotizaciones_page.dart';
import 'package:flutter/material.dart';

class DetallesPage extends StatelessWidget {
  final cotizacionesList = [
    'Vehiculo 1',
    'Vehiculo 2',
    'Vehiculo 3',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detalle de Cotizacion"),
      ),
      body: ListView(
        //children: _generarItems(),
        children: _crearItemsCorta(context),
      ),
      // body: Padding(padding: const EdgeInsets.all(16.0)),
    );
  }

  List<Widget> _crearItemsCorta(BuildContext context) {
    var varwidgets = cotizacionesList.map((item) {
      return Column(
        children: [
          ListTile(
            title: Text(item + '!'),
            subtitle: Text('SubTitulo'),
            leading: Icon(Icons.accessibility),
            trailing: Icon(Icons.keyboard_arrow_right),
            //  onTap: () => showGetDetallesCotizacion(context),
          ),
          Divider()
        ],
      );
    }).toList();
    return varwidgets;
  }
}
