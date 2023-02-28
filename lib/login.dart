import 'package:flutter/material.dart';
import 'package:flutter_application_4/register.dart';

class WidgetLogin extends StatefulWidget {
  const WidgetLogin({super.key});

  @override
  State<WidgetLogin> createState() => _WidgetLoginState();
}

class _WidgetLoginState extends State<WidgetLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.deepPurple,
        title: const Center(
            child: Text(
          'LOGIN',
          style: TextStyle(color: Colors.white),
        )),
        leading: const Icon(
          Icons.arrow_back_ios,
          color: Colors.white,
        ),
        actions: const [
          Icon(
            Icons.account_circle_outlined,
            color: Colors.white,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            const Positioned(
              top: 5,
              left: 90,
              child: Image(
                image: AssetImage('lib/assets/images/Imagen_login.jpg'),
                width: 190,
                height: 190,
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10.0),
              child: const Text(
                'Login',
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.center,
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                  hintText: 'Email', border: OutlineInputBorder()),
            ),
            const SizedBox(
              height: 12,
            ),
            TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                  suffixIcon: Icon(Icons.remove_red_eye),
                  hintText: 'Password',
                  border: OutlineInputBorder()),
            ),
            Container(
              margin: const EdgeInsets.all(10.0),
              child: const Text(
                'Forgot password?',
                style: TextStyle(fontSize: 12, color: Colors.blue),
                textAlign: TextAlign.right,
              ),
            ),
            Container(
              padding: const EdgeInsets.all(15.0),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const WidgetRegister();
                    }));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent,
                  ),
                  child: const Text(
                    'SIGN IN',
                    style: TextStyle(color: Colors.white),
                  )),
            ),
            Container(
                margin: const EdgeInsets.only(top: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text("Don't have an account?"),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const WidgetRegister();
                          }));
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.deepPurple,
                        ),
                        child: const Text(
                          'SIGN UP',
                          style: TextStyle(color: Colors.white),
                        ))
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
