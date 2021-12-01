import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  var contador = 0;

  final elements =['Element 1','Element 2','Element 3','Element 4'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Components Temp'),
      ),
      body: ListView(
        children: _crearElementsCurt(),
      )
    );
  }

  List<Widget> _crearElementsCurt(){
    // Amb aquest mètode volem emprar la funcionalitat Map de les llistes
    var widgets = elements.map((element){
      contador++;
      return Column(
        children: [
          ListTile(
            
            leading: CircleAvatar(),
            title: Text(element),
            subtitle: Text('Això és un subtítol'),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: (){},
          ),
        ],
      );
    });
    
    return widgets.toList();
  }

  /* Codi encara més simplificat
  
  List<Widget> _crearElementsCurt(){
    // Amb aquest mètode volem emprar la funcionalitat Map de les llistes
    return elements.map((element){
      return ListTile(
        title: Text(element),
      );
    }).toList();
  }
  */

  List<Widget> _crearElements(){
    //Aquesta declaració és la nova degut al null safety
    List<Widget> llista = [];
    for (String element in elements){
      final tempWidget = ListTile(
        title: Text(element)
      );
      llista..add(tempWidget)
            ..add(Divider());
    }
    return llista;
  }

  /* Utilitzant la funció for
  List<Widget> _crearElements(){
    //Aquesta declaració és la nova degut al null safety
    List<Widget> llista = [];
    for (String element in elements){
      final tempWidget = ListTile(
        title: Text(element)
      );
      llista.add(tempWidget);
      llista.add(Divider());

    }
    return llista;
  }
  */
  /* Utilitzant la funció forEach()
  List<Widget> _crearElements(){
    //Aquesta declaració és la nova degut al null safety
    List<Widget> llista = [];
    elements.forEach((element) {
      llista.add(ListTile(
        title: Text(element),
      ));
      llista.add(Divider());
    });
    return llista;
  }
  */

  /* Utilitzant la funció forEach i un operador en cascada
  List<Widget> _crearElements(){
    //Aquesta declaració és la nova degut al null safety
    List<Widget> llista = [];
    elements.forEach((element) {
      llista..add(ListTile(
        title: Text(element),
      ))
      ..add(Divider());
    });
    return llista;
  }
  */
}

