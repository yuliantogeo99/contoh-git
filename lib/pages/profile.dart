import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const new({super.key, required this.nama, required this.nip});

  final String nama;
  final String nip;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Profil'),
      centerTitle: true,
      ),
      body: Center(
        child: Column(
          spacing: 12,
          children: [
            Text('Nama : $nama'),
            Text('NIP : $nip'),
            ElevatedButton(onPressed: (){
            Navigator.pop(context);
          }, child: Text('Log Out')
          ),
          ],
        ),
      ),
    );
  }
}