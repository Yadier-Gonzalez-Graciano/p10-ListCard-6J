import 'package:flutter/material.dart';

void main() => runApp(const MilistaCard());

class MilistaCard extends StatelessWidget {
  const MilistaCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Mi ListView Gonzalez Yadier",
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: Paginainicial(),
    );
  }
}

class Paginainicial extends StatefulWidget {
  const Paginainicial({Key? key}) : super(key: key);

  @override
  State<Paginainicial> createState() => _PaginainicialState();
}

class _PaginainicialState extends State<Paginainicial> {
  List<String> images = [
    "assets/images/avatar1.png",
    "assets/images/avatar2.png",
    "assets/images/avatar3.png",
    "assets/images/avatar4.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("ListaView Gonzalez"),
        ),
        body: ListView.builder(
          itemBuilder: (BuildContext, index) {
            return Card(
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(images[index]),
                ),
                title: Text("El titulo"),
                subtitle: Text("El subtitulo"),
              ),
            );
          },
          itemCount: images.length,
          shrinkWrap: true,
          padding: EdgeInsets.all(5),
          scrollDirection: Axis.vertical,
        ));
  }
}
