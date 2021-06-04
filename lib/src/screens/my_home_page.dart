import 'package:exam_flutter/src/screens/Marcas/allmarcas_page.dart';
import 'package:exam_flutter/src/screens/allCotizaciones_page.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/src/material/list_tile.dart';
import 'package:exam_flutter/src/screens/cotizaciones_page.dart';

import 'Vehiculos/allVehiculos_page.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

  final _scafkey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scafkey,
      appBar: AppBar(
        title: Text("Inicio"),
      ),
      body: Center(
        child: Text("Bienvenidos"),
      ),
      drawer: _getDrawer(context),
    );
  }

  Widget _getDrawer(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(color: Colors.orange),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                FlutterLogo(
                  size: 100,
                ),
                Text(
                  "uso de drawer",
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
          ),
          ListTile(
            title: Text("Inicio"),
            leading: Icon(Icons.home),
            onTap: () => showHome(context),
          ),
          ListTile(
            title: Text("Cotizaciones"),
            leading: Icon(Icons.home),
            onTap: () => showCotizaciones(context),
          ),
          ListTile(
            title: Text("Marcas"),
            leading: Icon(Icons.home),
            onTap: () => showAllMarcas(context),
          ),
          ListTile(
            title: Text("Vehiculos"),
            leading: Icon(Icons.home),
            onTap: () => showAllVehiculos(context),
          )
        ],
      ),
    );
  }

  void showHome(context) {
    final route = MaterialPageRoute(builder: (context) {
      return MyHomePage();
    });

    Navigator.push(context, route);
  }

  void showCotizaciones(context) {
    final route = MaterialPageRoute(builder: (context) {
      return AllCotizaciones();
    });

    Navigator.push(context, route);
  }

  void showAllMarcas(context) {
    final route = MaterialPageRoute(builder: (context) {
      return AllMarcasPage();
    });

    Navigator.push(context, route);
  }

  void showAllVehiculos(context) {
    final route = MaterialPageRoute(builder: (context) {
      return AllVehiculosPage();
    });

    Navigator.push(context, route);
  }
}
