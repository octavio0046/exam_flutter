import 'package:exam_flutter/src/api/api_service.dart';
import 'package:exam_flutter/src/models/cotizacion.dart';
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
  ApiService _apiService = ApiService();

  late String vVencimiento;
  late int vTCAgenteId;
  late int vTCClienteId;

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
                  vTCAgenteId = value as int;
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
                  vTCClienteId = value as int;
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
      // debugPrint(vencimiento);
      //formKey.currentState!.save();
    } else {
      Profile profile = Profile(
          vencimiento: vVencimiento,
          tcclienteid: vTCClienteId,
          tcagenteId: vTCAgenteId);

      _apiService.createProfile(profile).then((isSuccess) {
        if (isSuccess) {
          // Navigator.pop(_scaffoldState.currentState.context, true);
        } else {
          // _scaffoldState.currentState.showSnackBar(SnackBar(
          //   content: Text("Submit data failed"),
          // ));
        }
      });
    }
  }
}

class Feature {}
