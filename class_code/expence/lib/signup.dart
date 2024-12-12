import 'package:expence/customfield.dart';
import 'package:flutter/material.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(
                height: 50,
              ),
              Image.asset('assets/images/paisa.png', width: 80),
              const SizedBox(height: 24.0),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Create your Account',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const CustomTextField(
                hintText: 'Name',
                obscureText: false,
              ),
              const SizedBox(
                height: 15,
              ),
              const CustomTextField(
                hintText: 'Username',
                obscureText: false,
              ),
              const SizedBox(
                height: 15,
              ),
              const CustomTextField(
                hintText: 'Password',
                obscureText: true,
              ),
              const SizedBox(
                height: 15,
              ),
              const CustomTextField(
                hintText: 'Conform Password',
                obscureText: true,
              ),
              const SizedBox(height: 24.0),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  minimumSize: const Size(double.infinity, 48.0),
                ),
                child: const Text(
                  'Sign Up',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
