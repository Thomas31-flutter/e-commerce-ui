import 'package:e_commerce/screens/homepage.dart';
import 'package:flutter/material.dart';

class LoginaPage extends StatelessWidget {
  const LoginaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Padding(
        padding: EdgeInsets.symmetric(vertical: 150, horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                'Login',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50),
              ),
              SizedBox(
                height: 80,
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Full name',
                  hintText: 'enter your name',
                  prefixIcon: Icon(Icons.person),
                ),
                onChanged: (value) {
                  username = value;
                },
              ),
              SizedBox(
                height: 30,
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email',
                  hintText: 'enter your mail',
                  prefixIcon: Icon(Icons.mail),
                ),
                keyboardType: TextInputType.url,
              ),
              SizedBox(
                height: 30,
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                  hintText: 'enter your password',
                  prefixIcon: Icon(Icons.password),
                ),
                obscureText: true,
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                width: double.infinity,
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return HomePage();
                        },
                      ),
                    );
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  color: Colors.blue,
                ),
              ),
              Text('Don\'t have account? sign up'),
            ],
          ),
        ),
      )),
    );
  }
}
