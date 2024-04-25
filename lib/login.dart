import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter15/login.dart';

import 'details.dart';
import 'home.dart';
import 'main.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Image.asset(
          'img/taxi.jpg',
          fit: BoxFit.cover,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Welcome to Andijan taxi.',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 80,
              ),
              TextField(
                  cursorColor: Colors.white,
                  controller: controller1,
                  keyboardType: TextInputType.name,
                  autocorrect: false,
                  onChanged: (v) {
                    field1 = controller1.text.isNotEmpty ? true : false;
                    if (controller1.text.length < 3) {
                      field1 = false;
                    }
                    setState(() {});
                  },
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {});
                          controller1.text = '';
                        },
                        icon: Icon(
                          controller1.text.isNotEmpty
                              ? Icons.highlight_remove
                              : null,
                          color: Colors.white,
                        )),
                    prefix: const SizedBox(
                      width: 8,
                    ),
                    border: InputBorder.none,
                    labelText: 'Name',
                    labelStyle:
                        TextStyle(color: hasError1 ? Colors.red : Colors.white),
                    focusedBorder: OutlineInputBorder(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(
                            color: hasError1 ? Colors.red : Colors.yellow,
                            width: 3)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(
                            color: hasError1 ? Colors.red : Colors.white,
                            width: 3)),
                    //errorText: hasError ? 'Please enter your name' : null
                  ),
                  style: const TextStyle(color: Colors.white, fontSize: 18)),
              Padding(
                padding: const EdgeInsets.only(top: 50, bottom: 30),
                child: TextField(
                    maxLength: 9,
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    cursorColor: Colors.white,
                    controller: controller2,
                    autocorrect: false,
                    onChanged: (v) {
                      if (controller2.text.isNotEmpty) {
                        field2 = true;
                        if (controller2.text.length < 9) {
                          field2 = false;
                        }
                        setState(() {});
                      }
                    },
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {});
                            controller2.text = '';
                          },
                          icon: Icon(
                            controller2.text.isNotEmpty
                                ? Icons.highlight_remove
                                : null,
                            color: Colors.white,
                          )),
                      prefixText: '+998 ',
                          prefixStyle: const TextStyle(color: Colors.white, fontSize: 18),
                      border: InputBorder.none,
                      labelText: 'Phone Number',
                      labelStyle: TextStyle(
                          color: hasError2 ? Colors.red : Colors.white),
                      focusedBorder: OutlineInputBorder(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(
                              color: hasError2 ? Colors.red : Colors.yellow,
                              width: 3)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(
                              color: hasError2 ? Colors.red : Colors.white,
                              width: 3)),
                      //errorText: hasError ? 'Please enter your number' : null
                    ),
                    style: const TextStyle(color: Colors.white, fontSize: 18)),
              ),
              TextField(
                  controller: controller3,
                  maxLength: 16,
                  cursorColor: Colors.white,
                  keyboardType: TextInputType.name,
                  autocorrect: false,
                  onSubmitted: (v) {
                    if (field1) {
                      setState(() {
                        hasError1 = false;
                      });
                    } else {
                      setState(() {
                        hasError1 = true;
                      });
                    }
                    if (field2) {
                      setState(() {
                        hasError2 = false;
                      });
                    } else {
                      setState(() {
                        hasError2 = true;
                      });
                    }
                    if (field3) {
                      setState(() {
                        hasError3 = false;
                      });
                    } else {
                      setState(() {
                        hasError3 = true;
                      });
                    }
                    if (field1 && field2 && field3) {
                      setState(() {
                        hasError1 = false;
                        hasError2 = false;
                        hasError3 = false;
                      });
                      Navigator.pushReplacement(
                          context,
                          CupertinoPageRoute(
                              builder: (context) => const HomeScreen()));
                    }
                  },
                  onChanged: (v) {
                    if (controller3.text.isNotEmpty) {
                      field3 = true;
                      setState(() {});
                      if (controller3.text.length < 8) {
                        field3 = false;
                      }
                    }
                  },
                  decoration: InputDecoration(
                    prefixIcon: IconButton(
                        onPressed: () {
                          setState(() {});
                          controller3.text = '';
                        },
                        icon: Icon(
                          controller3.text.isNotEmpty
                              ? Icons.highlight_remove
                              : null,
                          color: Colors.white,
                        )),
                    suffixIcon: IconButton(
                      onPressed: () {
                        obscure = !obscure;
                        setState(() {});
                      },
                      icon: obscure
                          ? const Icon(
                              CupertinoIcons.eye_fill,
                              color: Colors.white,
                            )
                          : const Icon(
                              CupertinoIcons.eye_slash_fill,
                              color: Colors.white,
                            ),
                    ),
                    border: InputBorder.none,
                    labelText: 'Password',
                    labelStyle:
                        TextStyle(color: hasError3 ? Colors.red : Colors.white),
                    focusedBorder: OutlineInputBorder(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(
                            color: hasError3 ? Colors.red : Colors.yellow,
                            width: 3)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(
                            color: hasError3 ? Colors.red : Colors.white,
                            width: 3)),
                    //errorText: hasError ? 'Please enter your name' : null
                  ),
                  obscureText: obscure,
                  style: const TextStyle(color: Colors.white, fontSize: 18)),
              const SizedBox(
                height: 50,
              ),
              SizedBox(
                width: 320,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    if (field1) {
                      setState(() {
                        hasError1 = false;
                      });
                    } else {
                      setState(() {
                        hasError1 = true;
                      });
                    }
                    if (field2) {
                      setState(() {
                        hasError2 = false;
                      });
                    } else {
                      setState(() {
                        hasError2 = true;
                      });
                    }
                    if (field3) {
                      setState(() {
                        hasError3 = false;
                      });
                    } else {
                      setState(() {
                        hasError3 = true;
                      });
                    }
                    if (field1 && field2 && field3) {
                      setState(() {
                        hasError1 = false;
                        hasError2 = false;
                        hasError3 = false;
                      });
                      Navigator.pushReplacement(
                          context,
                          CupertinoPageRoute(
                              builder: (context) => const HomeScreen()));
                    }
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black87,
                      foregroundColor: Colors.yellow),
                  child: const Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
