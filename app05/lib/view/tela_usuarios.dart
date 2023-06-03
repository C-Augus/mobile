// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../model/usuario.dart';
import '../repository/usuario_repository.dart';

class TelaUsuario extends StatefulWidget {
  const TelaUsuario({Key? key}) : super(key: key);

  @override
  State<TelaUsuario> createState() => _TelaUsuarioState();
}

class _TelaUsuarioState extends State<TelaUsuario> {
  
  List<Usuario> dados = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Usuários'),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      //
      // APRESENTAÇÃO DOS RESULTADOS
      //
      body: FutureBuilder<List<Usuario>>(
        //Requisição da API
        future: UsuarioRepository().getUsuarios(),
        builder: (context, snapshot) {
          //Erro na Requisição
          if (snapshot.hasError) {
            return Center(
              child: Text('Não foi possível exibir os dados'),
            );
          //Sucesso na Requisição
          } else if (snapshot.hasData) {
            var dados = snapshot.data;
            return GridView.builder(
              padding: EdgeInsets.all(5),
              // NÚMERO DE COLUNAS
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              // TOTAL DE ITENS
              itemCount: dados!.length,
              itemBuilder: (context, index) {
                return Card(
                  margin: EdgeInsets.all(5),
                  color: Colors.deepPurple.shade100,
                  shadowColor: Colors.blueGrey,
                  elevation: 10,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 70,
                          backgroundImage: NetworkImage(
                            dados[index].foto,
                          ),
                        ),
                        Text(
                          dados[index].nome,
                          overflow: TextOverflow.ellipsis,
                          style: GoogleFonts.lobster(fontSize: 24),
                        ),
                        Text(
                          dados[index].email,
                          overflow: TextOverflow.ellipsis,
                          style: GoogleFonts.roboto(fontSize: 14),
                        ),
                        Text(
                          dados[index].telefone,
                          overflow: TextOverflow.ellipsis,
                          style: GoogleFonts.roboto(fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          }
          return Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
