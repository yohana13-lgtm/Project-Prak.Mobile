import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'Asset/images/login.png', // Ganti dengan path gambar yang sesuai
              width: 200,
              height: 200,
            ),
            SizedBox(
                height: MediaQuery.of(context).size.height * 0.2),
            Text('Welcome',
              style: TextStyle(
                  color: Colors.red[900],
                  fontSize: 32,
                  letterSpacing: 4.0,
                  fontWeight: FontWeight.bold),),
            SizedBox(height: 10),
            Text('Please Login First !',
              style: TextStyle(
                  color: Colors.red[300],
                  fontSize: 18,
                  letterSpacing: 1.0),),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.red, width: 2.0),
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  contentPadding:
                  EdgeInsets.only(left: 30.0, top: 20.0, bottom: 20.0),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                    const BorderSide(color: Colors.red, width: 2.0),
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  suffixIcon: Icon(
                    Icons.person, color: Colors.red,
                  ),
                  labelText: 'Username',
                  hintText: 'Masukkan username',
                  labelStyle:TextStyle(
                      color: Colors.red
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.red, width: 2.0),
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  contentPadding:
                  EdgeInsets.only(left: 30.0, top: 20.0, bottom: 20.0),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                    const BorderSide(color: Colors.red, width: 2.0),
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  suffixIcon: Icon(
                    Icons.lock, color: Colors.red,
                  ),
                  labelText: 'Password',
                  hintText: 'Masukkan password',
                  labelStyle:TextStyle(
                      color: Colors.red
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Implementasi aksi ketika tombol ditekan
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.red, // Warna latar button hijau
                minimumSize: Size(150, 50), // Ukuran button
              ),
              child: Text(
                'Login',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
