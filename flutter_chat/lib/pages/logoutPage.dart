import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat/Routes/routes_import.gr.dart';

@RoutePage()
class logoutPage extends StatelessWidget {
  const logoutPage({super.key});
  @override
  Widget build(BuildContext context) {
    // here, Scaffold.of(context) returns null
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('login Screen')),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Login',
              style: TextStyle(
                  fontSize: 35,
                  color: Colors.teal,
                  fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Form(
                child: Column(
                  children: [
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: const InputDecoration(
                        labelText: 'Email',
                        hintText: 'Enter your Email',
                        prefixIcon: Icon(Icons.email),
                        border: OutlineInputBorder(),
                      ),
                      onChanged: (String value) {},
                      validator: (value) {
                        return value!.isEmpty
                            ? 'Please Enter a Valid Email'
                            : null;
                      },
                    ),
                    const SizedBox(
                      height: 35,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      decoration: const InputDecoration(
                        labelText: 'Password',
                        hintText: 'Enter Your Password',
                        prefixIcon: Icon(Icons.password),
                        border: OutlineInputBorder(),
                      ),
                      onChanged: (String value) {},
                      validator: (value) {
                        return value!.isEmpty ? 'Please Enter password' : null;
                      },
                    ),
                    MaterialButton(
                      onPressed: () {
                        AutoRouter.of(context).push(const ProfileRoute());
                      },
                      color: const Color.fromARGB(255, 7, 131, 71),
                      textColor: Colors.white,
                      child: const Text('Login'),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
