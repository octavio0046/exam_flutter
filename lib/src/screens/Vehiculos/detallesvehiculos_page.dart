import 'package:flutter/material.dart';

class DetatallesVehiculos extends StatelessWidget {
  final cotizacionesList = [
    'Estado: Activo',
    'Modelo: Rav4 2015',
    'Traccion: 4x4',
    'Color: Negro',
    'Marca: Toyota',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detalle de Vehiculo"),
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
