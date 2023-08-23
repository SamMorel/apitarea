import 'package:apitarea/utils/response_pelicula.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class ListaConstPage extends StatelessWidget {
  const ListaConstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Pelis'),
      ),
      body: ListView.builder(
        itemCount: responsePelis.length,
        itemBuilder: (BuildContext context, int index) {
          final pelis = responsePelis[index];
          //final posterPath = pelis['poster_path']; //variable para redibujar la imagen en el CirculAvatar

          return Column(
            children: [
              ListTile(
                title: Text(
                  '${pelis['title']}',
                  style: const TextStyle(
                      color: Colors.deepPurple, fontWeight: FontWeight.bold),
                ),
                subtitle: Text('${pelis['release_date']}'),
                leading: CircleAvatar(child: Text('${pelis['title'][0]}')
                    //CachedNetworkImage(imageUrl:posterPath) //no se redibujo la imagen entonces le deje un Text()
                    ),
                trailing: const Icon(Icons.arrow_forward),
                onTap: () {},
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  height: 0.5,
                  width: double.infinity,
                  color: Colors.deepPurple[300],
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
