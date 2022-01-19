import 'package:flutter/material.dart';
import 'app_controller.dart';

/**
 * Tela stateful
 */
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader( //para adicionar uma foto no menu
                currentAccountPicture: ClipOval( //usado para deixar a imagem redonda
                  child: Image.asset('assets/images/eu.jpeg'),
                ),
                accountName: Text("rafa"),
                accountEmail: Text("rafacorreavieira2020@gmail.com")),
            ListTile(
              title: Text("Home"),
              subtitle: Text("Home Screen"),
              leading: Icon(Icons.home),
              onTap: () {
                print('home');
              },
            ),
            ListTile(
              title: Text("Logout"),
              subtitle: Text("Exit the app"),
              leading: Icon(Icons.exit_to_app),
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/');
              },
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("Teste"),
        actions: [CustomSwitcher()],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          // ListView usado para poder rolar a tela para baixo
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Contador $counter"),
            CustomSwitcher(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {
            counter++;
          });
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
    );
  }
}

class CustomSwitcher extends StatelessWidget {
  const CustomSwitcher({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Switch(
        value: AppController.instance.isDarkTheme,
        onChanged: (value) {
          AppController.instance.changeTheme();
        });
  }
}
