import 'package:flutter/material.dart';

// class Cotizacionespage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//       title: Text("Cotizaciones Page"),
//     ));
//   }
// }

class Cotizacionespage extends StatelessWidget {
  late String vVencimiento;
  late String vTCAgenteId;
  late String vTCClienteId;

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cotizaciones Page"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: formKey,
          child: Column(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(labelText: "Vencimiento"),
                onSaved: (value) {
                  vVencimiento = value!;
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Vencimiento es requerido";
                  }
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: "Agente"),
                onSaved: (value) {
                  vTCAgenteId = value!;
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Agente es requerido";
                  }
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: "Cliente"),
                onSaved: (value) {
                  vVencimiento = value!;
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Cliente es requerido";
                  }
                },
              ),
              RaisedButton(
                  child: Text("Guardar"),
                  onPressed: () {
                    _guardar(context);
                  }),
            ],
          ),
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   child: Icon(Icons.add_location),
      //   onPressed: () {
      //     //Navigator.pop(context);
      //   },
      // ),
    );
  }

  void _guardar(BuildContext context) {
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();
    }
  }
}
