import 'package:exam_flutter/src/screens/Marcas/addmarcas_page.dart';
import 'package:exam_flutter/src/screens/Marcas/detallemarca_page.dart';
import 'package:exam_flutter/src/screens/cotizaciones_page.dart';
import 'package:flutter/material.dart';

class AllMarcasPage extends StatelessWidget {
  final cotizacionesList = [
    'Toyota 1',
    'Honda 2',
    'Kia 3',
    'Hiunday 4',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Marcas"),
      ),
      body: ListView(
        //children: _generarItems(),
        children: _crearItemsCorta(context),
      ),
      // body: Padding(padding: const EdgeInsets.all(16.0)),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => showMarcaAdd(context),
      ),
    );
  }

  void showMarcaAdd(context) {
    final route = MaterialPageRoute(builder: (context) {
      return AddMarcasPage();
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
            onTap: () => showGetDetallesMarca(context),
          ),
          Divider()
        ],
      );
    }).toList();
    return varwidgets;
  }

  void showGetDetallesMarca(context) {
    final route = MaterialPageRoute(builder: (context) {
      return DetatalleMarca();
    });

    Navigator.push(context, route);
  }
}
