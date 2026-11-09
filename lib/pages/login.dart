import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/pages/profile.dart';

class LoginPage extends StatefulWidget {
  const new({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final namaController = TextEditingController();
  final nipController = TextEditingController();

  @override
  void dispose() {
    namaController.dispose();
    nipController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login'), centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          spacing: 16,
          children: [
            TextField(
              controller: namaController,
              decoration: InputDecoration(
                hintText: 'Masukkan Nama'
              ),
            ),
            TextField(
              controller: nipController,
              decoration: InputDecoration(
                hintText: 'Masukkan NIP'
            ),
            obscureText: true,
            ),
            ElevatedButton(onPressed: () {
              Navigator.push(context, 
              CupertinoPageRoute(builder: (_) => ProfilePage(
                nama: namaController.text,
                nip: nipController.text,
              )
              ),
            );
            }, child: Text('Login')),
          ],
        ),
      ),
    );
  }
}