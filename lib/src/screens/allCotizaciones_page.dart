import 'dart:convert';

import 'package:exam_flutter/src/screens/cotizaciones_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'detalles_page.dart';

class AllCotizaciones extends StatelessWidget {
  final cotizacionesList = [
    'Cotizacion 1',
    'Cotizacion 2',
    'Cotizacion 3',
    'Cotizacion 4',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cotizaciones"),
      ),
      body: ListView(
        //children: _generarItems(),
        children: _crearItemsCorta(context),
      ),
      // body: Padding(padding: const EdgeInsets.all(16.0)),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => showCotizacionesAdd(context),
      ),
    );
  }

  void showCotizacionesAdd(context) {
    final route = MaterialPageRoute(builder: (context) {
      return Cotizacionespage();
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
            onTap: () => showGetDetallesCotizacion(context),
          ),
          Divider()
        ],
      );
    }).toList();
    return varwidgets;
  }

  void showGetDetallesCotizacion(context) {
    final route = MaterialPageRoute(builder: (context) {
      return DetallesPage();
    });

    Navigator.push(context, route);
  }
}
