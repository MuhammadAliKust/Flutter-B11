import 'package:flutter/material.dart';
import 'package:string_validator/string_validator.dart';
class LoginView extends StatelessWidget {
  LoginView({super.key});

  TextEditingController emailController = TextEditingController();
  TextEditingController pwdController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
      ),
      body: Column(
        children: [
          TextField(
            controller: emailController,
            keyboardType: TextInputType.number,
            maxLines: 1,
            decoration: InputDecoration(
                label: Text("Email"),
                hintText: 'test@gmail.com',
                prefixIcon: Icon(Icons.email),
                suffixIcon: Icon(Icons.email)),
          ),
          TextField(
            controller: pwdController,
            keyboardType: TextInputType.number,
            maxLines: 1,
            obscureText: true,
            decoration: InputDecoration(
                label: Text("Password"),
                hintText: 'Password must be 6 or more characters.',
                prefixIcon: Icon(Icons.lock),
                suffixIcon: Icon(Icons.visibility)),
          ),
          const SizedBox(
            height: 50,
          ),
          ElevatedButton(
              onPressed: () {
                if (emailController.text.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Email cannot be empty.")));
                  return;
                }
                if (!emailController.text.isEmail) {
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Email is not valid.")));
                  return;
                }
                if (pwdController.text.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Password cannot be empty.")));
                  return;
                }
                if (pwdController.text.length < 6) {
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Password must be 6 or more characters.")));
                  return;
                }
              },
              child: const Text("Login"))
        ],
      ),
    );
  }
}
