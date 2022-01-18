import 'package:flutter/material.dart';
import 'package:padrao/home_page.dart';

/**
 * Login Page
 */
class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        //para poder deslizar a tela para baixo
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/logo.png'),
                TextField(
                  onChanged: (text) {
                    email = text;
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Email",
                  ),
                ),
                SizedBox(
                  height: 10,
                  width: 10,
                ),
                TextField(
                  onChanged: (text) {
                    password = text;
                  },
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Password",
                  ),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    if (email == 'rafa' && password == '1234') {
                      //rotas nomeadas
                      Navigator.of(context).pushReplacementNamed(
                          '/home'); //somente com o pushNamed ele navega pra pagina mas a pagina de login continua visivel

                      /*Navigator.of(context).pushReplacement(
                          //somente com o push ele navega pra pagina mas a pagina de login continua visivel
                          MaterialPageRoute(builder: (context) => HomePage())); //rotas manuais*/
                    }
                  },
                  child: Text("Login"),
                ),
                ElevatedButton(onPressed: () {
                  Navigator.of(context).pushNamed('/forgotPassword');
                }, child: Text("Esqueci minha senha"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
