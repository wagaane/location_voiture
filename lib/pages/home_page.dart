// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(241, 239, 239, 1),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            ListTile(
              title: Center(
                child: Text(
                  "Hello, Soumany!",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
              trailing: Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(100)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.9),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 5), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Icon(
                    Icons.notifications,
                    color: Colors.black,
                  )),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: ListTile(
                  leading: Icon(Icons.search),
                  title: Text(
                    "Location",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                  trailing: Icon(Icons.save),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: ListTile(
                  leading: Icon(Icons.date_range),
                  title: Text(
                    "July 08 - July 15",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: ListTile(
                  leading: Icon(Icons.people_alt_sharp),
                  title: Text(
                    "2 Guests",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                  trailing: Text(
                    "- | +",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 150.0,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 58, 198, 193),
                  borderRadius: BorderRadius.all(Radius.circular(100))),
              child: Center(
                  child: Text(
                "Search",
                style: TextStyle(color: Colors.white),
              )),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: MediaQuery.of(context).size.height / 2 ,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Color.fromARGB(210, 208, 220, 225),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Image.asset("images/img.jpeg", fit: BoxFit.fill),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Text(
                            "details".toUpperCase(),
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Text(
                            "braries in 479ms (compile: 17 ms, reload: 229 ms,\n reassemble: 202 ms)\n"+
                            "braries in 479ms (compile: 17 ms, \nreload: 229 ms, reassemble: 202 ms)\n",
                            style: TextStyle(
                                fontSize: 12, ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 30,
        backgroundColor: Color.fromARGB(255, 75, 82, 93),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.white,),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search, color: Colors.white,),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Colors.white,),
            label: 'Profile',
          ),
         
        ],
        currentIndex: 1,
        selectedItemColor: Colors.blue,
        onTap: (value) {
          
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: () {
          // Add your onPressed code here!
        },
        child: Icon(Icons.add, color: Color.fromARGB(255, 75, 82, 93),),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      

    );
  }
}
