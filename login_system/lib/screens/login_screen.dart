import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: width * 5 / 6,
                  child: Center(child: Image.asset('assets/images/Login.png', width: width * 2 / 3))),
                SizedBox(height: 40),
                Text(
                  'Login',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w500,
                    color: Colors.green[200],
                  ),
                ),
                Text(
                  'Please Sign In to continue',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Colors.green[200],
                  ),
                ),
                SizedBox(height: 30),
                SizedBox(
                  width: width * 5 / 6,
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person, color: Colors.green[200]),
                      hintText: 'Username',
                      hintStyle: TextStyle(color: Colors.green[200]),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(
                          color: Colors.green[200]!,
                          width: 2,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(
                          color: Colors.green[200]!,
                          width: 2,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                SizedBox(
                  width: width * 5 / 6,
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock, color: Colors.green[200]),
                      suffixIcon: Icon(Icons.remove_red_eye_outlined, color: Colors.green[200]),
                      hintText: 'Password',
                      hintStyle: TextStyle(color: Colors.green[200]),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(
                          color: Colors.green[200]!,
                          width: 2,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(
                          color: Colors.green[200]!,
                          width: 2,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                SizedBox(
                  width: width * 5 / 6,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Reminder me next time',
                          style: TextStyle(
                            color: Colors.green[200],
                            fontSize: 14,
                          ),
                        ),
                        Transform.scale(
                          scale: 0.7,
                          child: Switch(
                            value: true,
                            onChanged: (value) {},
                            activeColor: Colors.green[200],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10),
                SizedBox(
                  width: width * 5 / 6,
                  height: 48,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('Sign In', style: TextStyle(fontSize: 16)),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green[200]!,
                      foregroundColor: Colors.white,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                SizedBox(
                  width: width * 5 / 6,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Dont have account?',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey[400],
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Sign Up',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Colors.green[200],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
