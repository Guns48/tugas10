import 'package:flutter/material.dart';

class FormScreen extends StatefulWidget {
  static const String routes = 'FormScreen';
  const FormScreen({Key? key}) : super(key: key);

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  final formKey = GlobalKey<FormState>();
  final TextEditingController fullname = TextEditingController();
  final TextEditingController email = TextEditingController();
  String yourname = '';
  String youremail = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Login',
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[Colors.green, Colors.blue])),
        ),
      ),
      body: Form(
        key: formKey,
        child: Column(
          children: [
            Image(
              image: AssetImage(
                'assets/bg.png',
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.20),
              child: Text(
                "Selamat Datang $yourname , Email ($youremail)",
                style: TextStyle(
                  fontSize: 18,
                  color: Color.fromARGB(255, 59, 162, 246),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 5),
              child: TextFormField(
                controller: fullname,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(90.0),
                    ),
                    labelText: 'Nama',
                    hintText: 'Masukkan Nama'),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
              child: TextFormField(
                controller: email,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(90.0),
                    ),
                    labelText: 'Email',
                    hintText: 'Masukkan Email'),
              ),
            ),
            Container(
                height: 80,
                padding: const EdgeInsets.all(15),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(20),
                  ),
                  child: const Text('Log In'),
                  onPressed: () {
                    setState(() {
                      yourname = fullname.text;
                      youremail = email.text;
                    });
                  },
                )),
          ],
        ),
      ),
    );
  }
}
