import 'package:exam_flutter/src/screens/allCotizaciones_page.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/src/material/list_tile.dart';
import 'package:exam_flutter/src/screens/cotizaciones_page.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

  final _scafkey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scafkey,
      appBar: AppBar(
        title: Text("Uso de Drawer"),
      ),
      body: Center(
        child: Text("hola"),
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
          )
        ],
      ),
    );
  }

  void showHome(context) {
    final route = MaterialPageRoute(builder: (context) {
      return Cotizacionespage();
    });

    Navigator.push(context, route);
  }

  void showCotizaciones(context) {
    final route = MaterialPageRoute(builder: (context) {
      return AllCotizaciones();
    });

    Navigator.push(context, route);
  }
}
