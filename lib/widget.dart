import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

import 'details.dart';
import 'home.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: Column(
                      children: [
                        const Icon(
                          CupertinoIcons.location_solid,
                          color: Colors.red,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        for (int k = 0; k < 16; k++)
                          Container(
                            margin: const EdgeInsets.all(2),
                            width: 6,
                            height: 6,
                            decoration: const BoxDecoration(
                              color: Colors.black26,
                              shape: BoxShape.circle,
                            ),
                          ),
                        const SizedBox(
                          height: 8,
                        ),
                        const Icon(
                          CupertinoIcons.location_fill,
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        city1,
                        style:
                        const TextStyle(fontSize: 15, color: Colors.grey),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        child: dropDown1(),
                      ),
                      const Divider(),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Text(
                          city2,
                          style:
                          const TextStyle(fontSize: 15, color: Colors.grey),
                        ),
                      ),
                      dropDown2(),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              width: 350,
              child: TextField(
                onChanged: (v) {
                  setState(() {
                    v = controller4.text;
                    if (controller4.text == '1' ||
                        controller4.text == '2' ||
                        controller4.text == '3' ||
                        controller4.text == '4'
                    ) {
                      error = false;
                    } else {
                      error = true;
                    }
                  });
                },
                controller: controller4,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    hintText: 'Nechta odam (1-4 odamgacha)',
                    prefixIcon: const Icon(
                      CupertinoIcons.person_3_fill,
                      size: 30,
                    ),
                    errorText:
                    error ? '1 - 4 gacha bolgan sin kiriting' : null),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Mashina Tanlang',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                )
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              width: double.infinity,
              height: 140,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: cars.length,
                itemBuilder: (context, index) =>
                    Card(
                      margin: const EdgeInsets.only(right: 15, bottom: 2),
                      surfaceTintColor: Colors.white,
                      elevation: 3,
                      child: SizedBox(
                        width: 220,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 150,
                              height: 70,
                              decoration: BoxDecoration(
                                color: Colors.grey.shade400,
                                borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(15),
                                    bottomRight: Radius.circular(15)),
                              ),
                              child: Image.asset(
                                'img/${cars[index]}.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(height: 5,),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment
                                    .spaceBetween,
                                children: [
                                  Text(carsT[index], style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),),
                                  Text("Soni: ${carsC[index]}",
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),)
                                ],
                              ),
                            ),
                            const SizedBox(height: 8),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment
                                    .spaceBetween,
                                children: [
                                  Text("Mavgud: ${carsA[index]}",
                                    style: const TextStyle(
                                        fontSize: 14, color: Colors.grey),),
                                  const Text("Sigimi: 4", style: TextStyle(
                                      fontSize: 14, color: Colors.grey),),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
              ),
            ),
            const SizedBox(height: 20,),
            const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Qoshimcha',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                )
            ),
            Wrap(
              children: [
                CheckboxListTile(
                  value: check1,
                  onChanged: (v) {
                    check1 = v!;
                    setState(() {});
                  },
                  controlAffinity: ListTileControlAffinity.leading,
                  activeColor: CupertinoColors.systemYellow
                      .darkHighContrastColor,
                  title: const Text('Yukxona', style: TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w600),),
                ),
                CheckboxListTile(
                  value: check2,
                  onChanged: (v) {
                    check2 = v!;
                    setState(() {});
                  },
                  activeColor: CupertinoColors.systemYellow
                      .darkHighContrastColor,
                  controlAffinity: ListTileControlAffinity.leading,
                  title: const Text('Katta xajmdagi yuk', style: TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w600),),
                ),
                CheckboxListTile(
                  value: check3,
                  onChanged: (v) {
                    check3 = v!;
                    setState(() {});
                  },
                  activeColor: CupertinoColors.systemYellow
                      .darkHighContrastColor,
                  controlAffinity: ListTileControlAffinity.leading,
                  title: const Text('Havo sovutkich', style: TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w600),),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            SizedBox(
                width: 400,
                height: 50,
                child: ElevatedButton(
                    onPressed: () {
                      if (controller4.text.isEmpty) {
                        setState(() {
                          error = true;
                        });
                      }
                      if (!error) {
                        order(context);
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: CupertinoColors.systemYellow
                          .darkHighContrastColor,
                      foregroundColor: Colors.black,
                    ),
                    child: const Text(
                      'Buyurtma berish',
                      style:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    )
                )
            ),
          ],
        ),
      ),
    );
  }

  dropDown1() {
    return DropdownButtonFormField(
      decoration: const InputDecoration(
        border: InputBorder.none,
      ),
      onChanged: (v) {
        setState(() {
          selectedItem1 = v.toString();
          city1 = selectedItem1;
        });
      },
      value: selectedItem1,
      items: cities
          .map((e) =>
          DropdownMenuItem(
            value: e,
            child: Text(e),
          ))
          .toList(),
    );
  }

  dropDown2() {
    return DropdownButtonFormField(
      decoration: const InputDecoration(
        border: InputBorder.none,
      ),
      onChanged: (v) {
        setState(() {
          selectedItem2 = v.toString();
          city2 = selectedItem2;
        });
      },
      value: selectedItem2,
      items: cities
          .map((e) =>
          DropdownMenuItem(
            value: e,
            child: Text(e),
          ))
          .toList(),
    );
  }
}

order(BuildContext context) {
  int a = Random().nextInt(4);
  showDialog(
    context: context,
    builder: (context) =>
        AlertDialog(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("Sizning buyurtmangiz"),
              const SizedBox(width: 35,),
              IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(Icons.highlight_remove, size: 30,))
            ],
          ),
          content: SizedBox(
            height: 300,
            child: Column(
              children: [
            Expanded(
            child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Column(
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(CupertinoIcons.location_solid),
                    SizedBox(height: 65,),
                    Icon(Icons.navigation),
                  ],
                ),
                const SizedBox(width: 8,),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Olib ketish nuqtasi',
                        style: TextStyle(fontSize: 13, color: Colors.grey),),
                      Text(city1, overflow: TextOverflow.fade,
                        style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),),
                      const SizedBox(height: 25,),
                      const Text('Yetqazish nuqtasi',
                        style: TextStyle(fontSize: 13, color: Colors.grey),),
                      Text(city2, overflow: TextOverflow.fade,
                        style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 15),
                  child: VerticalDivider(width: 25, color: Colors.black,),
                ),
                const SizedBox(width: 5,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Wrap(
                          children: [
                            const Icon(Icons.groups),
                            const SizedBox(width: 8,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text('Odam soni', style: TextStyle(
                                    fontSize: 13, color: Colors.grey),),
                                Text(controller4.text, style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 35,),
                        Wrap(
                          children: [
                            const Icon(CupertinoIcons.car_detailed),
                            const SizedBox(width: 8,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text('Mashina turi',
                                  overflow: TextOverflow.fade,
                                  style: TextStyle(
                                      fontSize: 13, color: Colors.grey),),
                                Text(carsT[a], style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
            const SizedBox(
              width: 270,
              child: TextField(
                maxLength: 9,
                decoration: InputDecoration(
                    prefixText: '+998 ',
                    prefixStyle: TextStyle(color: Colors.black, fontSize: 18),
                    prefixIcon: Icon(Icons.call),
                    hintText: 'Telefon raqam',
                    hintStyle: TextStyle(color: Colors.black)
                ),
              ),
            ),
            const SizedBox(height: 25,),
            SizedBox(
                height: 55,
                width: 300,
                child: ElevatedButton(onPressed: ()
            {},
            style: ElevatedButton.styleFrom(
                backgroundColor: CupertinoColors.systemYellow
                    .darkHighContrastColor,
                foregroundColor: Colors.black87
            ),
            child: const Text(
              'Kodni yuborish',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),),
        )
    ],
  ))
  ],
  ),
  ),
  ));
  }