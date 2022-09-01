import 'package:flutter/material.dart';
import 'package:sepatu_app/category_brand_shoes/adidas/adidas.dart';
import 'package:sepatu_app/category/geoff_max.dart';
import 'package:sepatu_app/category_brand_shoes/adidas/adidas.dart';
import 'package:sepatu_app/category/asics.dart';
import 'package:sepatu_app/category/convers.dart';
import 'package:sepatu_app/category/geoff_max.dart';
import 'package:sepatu_app/category/puma.dart';
import 'package:sepatu_app/category/reebox.dart';
import 'package:sepatu_app/category/vans.dart';
import 'package:sepatu_app/category_brand_shoes/nike/nike.dart';
import 'package:sepatu_app/login_page.dart';
import 'package:sepatu_app/category_brand_shoes/nike/body.dart';
import 'header.dart';

class User extends StatefulWidget {
  final String? username;

  User({this.username});
  @override
  _UserState createState() => _UserState();
}

class _UserState extends State<User> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black54,
        title: const Text("Kategori"),
      ),
      //menu bar
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const MyHeaderDrawer(),
              ListTile(
                leading: const Icon(Icons.home),
                title: const Text("Beranda"),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.settings),
                title: const Text("Pengaturan"),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.money),
                title: const Text("Berlangganan"),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.people),
                title: const Text("Profil"),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.logout),
                title: const Text("Log Out"),
                onTap: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => LoginPage()));
                },
              ),
            ],
          ),
        ),
      ),
      body: GridView.count(
        padding: const EdgeInsets.only(top: 10),
        crossAxisCount: 2,
        children: <Widget>[
          Card(
            elevation: 15,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: InkWell(
              onTap: () {

                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => nike()));
              },
              splashColor: Colors.lightBlueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ClipRRect(
                        borderRadius: BorderRadius.circular(0),
                        child: Image.asset('assets/images/nike.png')),
                    const Text(
                      'NIKE',
                      style: TextStyle(fontSize: 20.0),
                    ),
                  ],
                ),
              ),
            ),
            margin: const EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
          ),

          
          Card(
            elevation: 15,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: InkWell(
              onTap: () {
                 Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => adidas()));
              },
              splashColor: Colors.lightBlueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ClipRRect(
                        borderRadius: BorderRadius.circular(0),
                        child: Image.asset('assets/images/adidas.png')),
                    const Text(
                      'ADIDAS',
                      style: TextStyle(fontSize: 20.0),
                    ),
                  ],
                ),
              ),
            ),
            margin: const EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
          ),

          Card(
            elevation: 15,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: InkWell(
              onTap: () {
                 Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => vans()));
              },
              splashColor: Colors.lightBlueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ClipRRect(
                        borderRadius: BorderRadius.circular(0),
                        child: Image.asset('assets/images/vans.png')),
                    const Text(
                      'VANS',
                      style: TextStyle(fontSize: 20.0, color: Colors.black ),
                    ),
                  ],
                ),
              ),
            ),
            margin: const EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
          ),

          Card(
            elevation: 15,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: InkWell(
              onTap: () {
                 Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => convers()));
              },
              splashColor: Colors.lightBlueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ClipRRect(
                        borderRadius: BorderRadius.circular(0),
                        child: Image.asset('assets/images/convers.png')),
                    const Text(
                      'CONVERSE',
                      style: TextStyle(fontSize: 20.0),
                    ),
                  ],
                ),
              ),
            ),
            margin: const EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
          ),

          Card(
            elevation: 15,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: InkWell(
              onTap: () {
                 Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => puma()));
              },
              splashColor: Colors.lightBlueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ClipRRect(
                        borderRadius: BorderRadius.circular(0),
                        child: Image.asset('assets/images/puma.png')),
                    const Text(
                      'PUMA',
                      style: TextStyle(fontSize: 20.0),
                    ),
                  ],
                ),
              ),
            ),
            margin: const EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
          ),

          Card(
            elevation: 15,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: InkWell(
              onTap: () {
                 Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => reebox()));
              },
              splashColor: Colors.lightBlueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ClipRRect(
                        borderRadius: BorderRadius.circular(0),
                        child: Image.asset('assets/images/reebok.png')),
                    const Text(
                      'REEBOK',
                      style: TextStyle(fontSize: 20.0),
                    ),
                  ],
                ),
              ),
            ),
            margin: const EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
          ),

          Card(
            elevation: 15,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            //    color: Colors.cyan,
            child: InkWell(
              onTap: () {
                 Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => geoff()));
              },
              splashColor: Colors.lightBlueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ClipRRect(
                        borderRadius: BorderRadius.circular(0),
                        child: Image.asset('assets/images/geoff.png')),
                    const Text(
                      'GEOOF MAX',
                      style: TextStyle(fontSize: 20.0),
                      
                    ),
                  ],
                ),
              ),
            ),
            margin: const EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
          ),

          Card(
            elevation: 15,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: InkWell(
              onTap: () {
                 Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => asics()));
              },
              splashColor: Colors.lightBlueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ClipRRect(
                        borderRadius: BorderRadius.circular(0),
                        child: Image.asset('assets/images/ascis.png')),
                    const Text(
               
                      'ASICS',
                      style: TextStyle(fontSize: 20.0),
                    ),
                  ],
                ),
              ),
            ),
            margin: const EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
          ),
           
         
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}

