import 'package:flutter/material.dart';
import 'package:bangundatarcalculator/customtile.dart';
import 'package:bangundatarcalculator/profile.dart';
import 'package:bangundatarcalculator/calculate.dart';

class MainHome extends StatelessWidget {
  const MainHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Calculator 2D Shape'),
        backgroundColor: Colors.deepOrange,
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
                decoration: const BoxDecoration(
                    gradient: LinearGradient(colors: <Color>[
                      Colors.deepOrange,
                      Colors.orangeAccent
                    ])
                ),
                child: Column(
                  children: <Widget>[
                    Material(
                      elevation: 10,
                      child: Padding(padding: const EdgeInsets.all(3.0),
                          child: Image.asset('assets/image/micko.jpg',
                            width: 80, height: 80,)
                      ),
                    ),
                    const Padding(padding: EdgeInsets.all(12.0),
                        child: Text('Micko Tubagas',
                            style: TextStyle(color: Colors.white,
                                fontSize: 20.0))
                    )
                  ],
                )),
            CustomListTile(Icons.person, 'Profile', () {
              Navigator.push(context, MaterialPageRoute(builder:
                  (context) => const ProfilePage()),
              );}),
          ],
        ),
      ),
      body: const CalculateResult(),
    );
  }
}