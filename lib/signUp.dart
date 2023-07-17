import 'package:assignment7/arguments.dart';
import 'package:assignment7/routes.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController numController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  RegExp emailValidate = RegExp(r'^[a-zA-Z0-9]+@(gmail)+[/.](com)$');
  RegExp numValidate = RegExp(r'^[03][0-9]{9}');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign Up"),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextFormField(
                controller: nameController,
                validator: (String? value) {
                  if (value == "") {
                    return "Name field cannot be empty";
                  } else {
                    return null;
                  }
                },
                decoration: const InputDecoration(
                  hintText: "Please enter your name",
                  label: Text("Name"),
                  border: OutlineInputBorder()),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: emailController,
                validator: (String? value) {
                  if(value!.isEmpty){
                    return "Email field cannot be empty";
                  }else if(emailValidate.hasMatch(value)){
                    return null;
                  }else{
                    return "Invalid Email";
                  }
                },
                decoration: const InputDecoration(
                  hintText: "Please enter your Email",
                  label: Text("Email"),
                  border: OutlineInputBorder()),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: numController,
                validator: (String? value) {
                  if (value == "") {
                    return "Number field cannot be empty";
                  } else if (numValidate.hasMatch(value!)) {
                    return null;
                  } else {
                    return "Invalid Number";
                  }
                },
                decoration: const InputDecoration(
                  hintText: "Please enter your mobile number",
                  label: Text("Mobile Number"),
                  border: OutlineInputBorder()),
              ),
              const SizedBox(
                height: 16,
              ),
              TextFormField(
                controller: passwordController,
                validator: (String? value) {
                  if (value == "") {
                    return "password field cannot be empty";
                  } else if(value!.length < 8){
                    return "Password length must be greater than 8";
                  } else {
                    return null;
                  }
                },
                decoration: const InputDecoration(
                  hintText: "Please enter your Password",
                  label: Text("Password"),
                  border: OutlineInputBorder()),
              ),
               const SizedBox(
                height: 16,
              ),
              ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate() ) {
                         Navigator.pushNamed(
                      context, Routes.profileRoute,
                      arguments: ProfileArguments(
                        title: "Profile", name: nameController.text,
                        email: emailController.text, number: numController.text));
                    }
                    // Navigator.pushNamed(
                    //   context, Routes.profileRoute,
                    //   arguments: ProfileArguments(
                    //     title: "Profile", name: nameController.text,
                    //     email: emailController.text, number: numController.text));
                  },
                  child: const Text("Sign Up")
                  )
            ],
          ),
        ),
      ),
    );
  }
}