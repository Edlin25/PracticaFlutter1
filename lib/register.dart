import 'package:flutter/material.dart';
import 'package:flutter_application_4/login.dart';

class WidgetRegister extends StatefulWidget {
  const WidgetRegister({super.key});

  @override
  State<WidgetRegister> createState() => _WidgetRegisterState();
}

class _WidgetRegisterState extends State<WidgetRegister> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.deepPurple,
          title: const Center(
              child: Text(
            'SIGN UP',
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
          padding: const EdgeInsets.all(12.0),
          child: ListView(
            children: [
              TextFormField(
                decoration: const InputDecoration(
                    hintText: 'Username', border: OutlineInputBorder()),
              ),
              const SizedBox(
                height: 12,
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
              const SizedBox(
                height: 12,
              ),
              TextFormField(
                decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    hintText: 'Fecha de nacimiento',
                    suffixIcon: IconButton(
                        onPressed: () {
                          showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime.now()
                                .subtract(const Duration(days: 3650)),
                            lastDate:
                                DateTime.now().add(const Duration(days: 3650)),
                          );
                        },
                        icon: const Icon(Icons.calendar_month_outlined))),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                padding: const EdgeInsets.all(15.0),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const WidgetLogin();
                      }));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueAccent,
                    ),
                    child: const Text(
                      'REGISTER',
                      style: TextStyle(color: Colors.white),
                    )),
              )
            ],
          ),
        ));
  }
}
