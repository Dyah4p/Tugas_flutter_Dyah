import 'package:flutter/material.dart';

class LoginLayar extends StatelessWidget {
  const LoginLayar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
           
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.email),
              ),
            ),
            const SizedBox(height: 16), 

            
            TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.lock),
              ),
            ),
            const SizedBox(height: 20), 

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
      
                  Navigator.pushNamed(context, '/daftarTeman');
                },
                child: const Text('Login'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}