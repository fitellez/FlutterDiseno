import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {
  final estiloTitulo = TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold);
  final estiloSubtitulo = TextStyle(fontSize: 16.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: <Widget>[
          _crearImagen(),
          _crearTitulo(),
          _crearAcciones(),
          _crearTexto(),
          _crearTexto(),
          _crearTexto()
        ],
      ),
    ));
  }

  Widget _crearImagen() {
    return Container(
      width: double.infinity,
      child: Image(
          image: NetworkImage(
              'https://c4.wallpaperflare.com/wallpaper/410/435/661/dont-starve-wallpaper-thumb.jpg'),
              fit: BoxFit.cover,
              height: 200.0,
      ),
    );
  }

  Widget _crearTitulo() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Dont Starve Together',
                    style: estiloTitulo,
                  ),
                  SizedBox(
                    height: 7.0,
                  ),
                  Text(
                    'Lorem ipsum Lorem ipsum ',
                    style: estiloSubtitulo,
                  )
                ],
              ),
            ),
            Icon(
              Icons.star,
              color: Colors.red,
            ),
            Text(
              '41',
              style: TextStyle(fontSize: 20.0),
            )
          ],
        ),
      ),
    );
  }

  Widget _crearAcciones() {
    return Row(
      //Se ordena de forma horizontal
      mainAxisAlignment:
          MainAxisAlignment.spaceEvenly, //Espacio entre cada hijo
      children: <Widget>[
        _accion(Icons.call, 'CALL', Colors.blue, 40.0),
        _accion(Icons.near_me, 'ROUTE', Colors.blue, 40.0),
        _accion(Icons.share, 'SHARE', Colors.blue, 40.0)
      ],
    );
  }

  Widget _accion(IconData icon, String texto, Color color, double tam) {
    return Column(
      children: <Widget>[
        Icon(
          icon,
          color: color,
          size: tam,
        ),
        SizedBox(width: 5.0),
        Text(
          texto,
          style: TextStyle(color: color, fontSize: 15.0),
        )
      ],
    );
  }

  Widget _crearTexto() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 40.0),
      child: Text(
        'Dolore labore fugiat aliquip aliquip aliqua dolor est. Aliqua ex cupidatat mollit sint esse ex eiusmod cupidatat laboris sint est. Aute minim deserunt tempor deserunt excepteur id elit amet. Velit minim deserunt reprehenderit fugiat. In minim aute labore nulla voluptate non amet fugiat cupidatat sunt ex eu. Voluptate velit Lorem est duis. Adipisicing ad proident esse ullamco Lorem et est incididunt ea cillum laborum sit do aliquip.',
        textAlign: TextAlign.justify,
      ),
    );
  }
}
