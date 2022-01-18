import 'package:flutter/material.dart';

class MyStatefulWidget extends StatelessWidget {
  final String title;
  String email = '';

  MyStatefulWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Recupere sua senha")),
      body: SizedBox(
        child: Padding(
          padding: const EdgeInsets.only(top: 10.0, left: 5, right: 5),
          child: Column(
            children: [
              Text("Digite um Email abaixo para recuperar sua senha: "),
              Padding(
                padding: EdgeInsets.all(8.0),
              ),
              TextField(
                keyboardType: TextInputType.emailAddress,
                onChanged: (text) {
                  email = text;
                },
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: "Email",
                ),
              ),
              ElevatedButton(onPressed: (){
                final snackBar = SnackBar(content: Text( "Email de recuperação enviado"));
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              }, child: Text("Enviar")

              ),

            ],
          ),
        ),
      ),
    );
  }
}
