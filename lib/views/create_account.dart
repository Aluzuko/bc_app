import 'package:flutter/material.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('lib/assets/images/logo.png', height: 100),
              const SizedBox(height: 32.0),
              Text(
                'Create Account',
                style: TextStyle(
                  fontSize: 32.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 32.0),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Username',
                  fillColor: Colors.white,
                  filled: true,
                ),
              ),
              const SizedBox(height: 16.0),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Email',
                  fillColor: Colors.white,
                  filled: true,
                ),
              ),
              const SizedBox(height: 16.0),
              TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                  hintText: 'Password',
                  fillColor: Colors.white,
                  filled: true,
                ),
              ),
              const SizedBox(height: 32.0),
              TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                  hintText: 'Confirm Password',
                  fillColor: Colors.white,
                  filled: true,
                ),
              ),
              const SizedBox(height: 32.0),
              ElevatedButton(
                onPressed: () {
                  // Handle account creation logic here
                },
                child: const Text(
                  'Create Account',
                  style: TextStyle(fontSize: 18.0, color: Colors.blue),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Padding(
                  padding: EdgeInsets.only(top: 16.0),
                  child: Text(
                    'Back to Login',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
