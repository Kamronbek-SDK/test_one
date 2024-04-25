import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter15/main.dart';
import 'package:flutter15/widget.dart';

import 'details.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.amber,
              ),
              accountName: Text(
                controller1.text,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              accountEmail: Text(
                controller2.text,
                style:
                    const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              otherAccountsPictures: [
                IconButton(onPressed: (){}, icon: const Icon(Icons.edit))
              ],
              currentAccountPicture: InkWell(
                onTap: () {},
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.grey, width: 2)),
                  child: const Icon(
                    CupertinoIcons.person_crop_circle,
                    size: 70,
                  ),
                ),
              ),
            ),
            for (int i = 0; i < texts.length; i++)
              ListTile(
                leading: Icon(icons[i]),
                title: Text(texts[i]),
              ),
            const Spacer(),
            Container(
              width: double.infinity,
              height: 50,
              decoration: const BoxDecoration(color: Colors.grey, boxShadow: [
                BoxShadow(
                    color: Colors.grey,
                    blurRadius: 20,
                    offset: Offset(1, 2),
                    blurStyle: BlurStyle.solid)
              ]),
              child: const Center(
                  child: Text(
                'Version 1.0',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                ),
              )
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text(
          'Qaerga ?',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
        ),
      ),
      body: const HomeBody() ,
    );
  }
}