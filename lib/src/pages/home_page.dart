import 'package:exercici2_mix/src/pages/alert_page.dart';
import 'package:exercici2_mix/src/providers/menu_provider.dart';
import 'package:exercici2_mix/src/utils/icona_string_util.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Components'),
      ),
      body: _llista(),
    );
  }
}

Widget _llista() {
  // menuProvider.CarregarDades()
  return FutureBuilder(
    future: menuProvider.CarregarDades(),
    initialData: [], // Aquest seria el valor per defecte que s'envia a snapshot.data
    builder: (context, AsyncSnapshot<List<dynamic>> snapshot){
      // print('builder');
      // print(snapshot.data);
      return ListView(
        children: _llistaElements( context, snapshot.data ),
      );
    },
  );
}


List<Widget> _llistaElements( BuildContext context, List<dynamic>? data ) {
  final List<Widget> elements =[];
  data?.forEach((element) {
    final widgetTemp = ListTile(
      title: Text(element['texte']),
      leading: getIcon(element['icona']),
      trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blue),
      onTap: (){

        Navigator.pushNamed(context, element['ruta']);
        /*
        final route = MaterialPageRoute(builder: (context) {
          return AlertPage();
        });
        final route = MaterialPageRoute(builder: (context) => AlertPage());
        Navigator.push(context, route);
        */
      },
    );
    elements..add(widgetTemp)
            ..add(Divider());
  });
  return  elements;
}

/*

Widget _llista(){
  // Retornam un Widget de tipus ListView, 
  // el children del qual és un mètode 
  //que retornarà una llista de Widgets
  return ListView(
    children: _llistaElements(),
  );
}

List<Widget> _llistaElements() {
  // Prova menuProvider
  print(menuProvider.opcions);
  // Retorna llista buida
  return [];
}


*/