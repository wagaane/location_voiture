// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:app_01/pages/home_page.dart';
import 'package:app_01/pages/home_page.dart';
import 'package:flutter/material.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      // crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 20,
        ),
        const SizedBox(height: 10),
        Expanded(
            child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
             boxShadow: [
                          BoxShadow(
                            color: Colors.orange.withOpacity(0.5),
                            spreadRadius: 3,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50), topRight: Radius.circular(50)),
          ),
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Nom complet *",
                    prefixIcon: Icon(
                      Icons.contact_page_outlined,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Sujet message *",
                        prefixIcon:
                            Icon(Icons.subject_outlined, color: Colors.blue))),
              ),
              SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Contenu message *",
                        prefixIcon:
                            Icon(Icons.message_outlined, color: Colors.blue))),
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width / 4 + 10,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                       
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Icon(
                          Icons.send_outlined,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        )),
      ],
    );
  }
}
