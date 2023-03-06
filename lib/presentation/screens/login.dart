import 'package:flutter/material.dart';
import 'package:flutter_application_4/presentation/screens/register.dart';
import 'package:flutter_application_4/controllers/sign_in_controller.dart';
import 'package:get/get.dart';

class WidgetLogin extends StatelessWidget {
  WidgetLogin({super.key});
  final controller = Get.put(SignInController());

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
              onChanged: controller.handleEmail,
              decoration: const InputDecoration(
                  hintText: 'Email', border: OutlineInputBorder()),
            ),
            const SizedBox(
              height: 12,
            ),
            TextFormField(
              onChanged: controller.handlePassword,
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
                    controller.handleSignIn();
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
                            return WidgetRegister();
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
