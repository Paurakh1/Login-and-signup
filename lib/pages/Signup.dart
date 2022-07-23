// ignore_for_file: file_names

import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('photos/Signup page.png'), fit: BoxFit.cover)),
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              color: Colors.purple,
              icon: const Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.pushNamed(context, 'login');
              }),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            // ignore: avoid_unnecessary_containers
            Container(
              padding: const EdgeInsets.only(left: 35, top: 10),
              child: const Text(
                'Create,\nan Account',
                style: TextStyle(
                  color: Colors.purple,
                  fontSize: 45,
                ),
              ),
            ),
            // ignore: avoid_unnecessary_containers
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.25,
                    right: 35,
                    left: 35),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: "Full Name ",
                        labelStyle:
                            TextStyle(fontSize: 18, color: Colors.black),
                        hintText: "Enter Your Full Name",
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: " Enter Phone/Email",
                        labelStyle:
                            TextStyle(fontSize: 18, color: Colors.black),
                        hintText: "Phone/email",
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      //for the password secure we use this widgets.
                      obscureText: true,
                      decoration: const InputDecoration(
                        hintText: "Enter Password",
                        labelStyle:
                            TextStyle(fontSize: 18, color: Colors.black),
                        labelText: "Password",
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    TextFormField(
                      //for the password secure we use this widgets.
                      obscureText: true,
                      decoration: const InputDecoration(
                        hintText: "Enter Password",
                        labelStyle:
                            TextStyle(fontSize: 18, color: Colors.black),
                        labelText: "Confirm Password",
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Sign Up",
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.purple,
                          child: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.arrow_forward)),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    // ignore: avoid_unnecessary_containers
                    Center(
                      // ignore: avoid_unnecessary_containers
                      child: Container(
                        child: TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, 'login');
                          },
                          child: const Text(
                            "Already have an account ?",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ),
                  const SizedBox(
                      height: 50,
                    ),
                    // ignore: avoid_unnecessary_containers
                    Container(
                      child: const Text("Powered by",style: TextStyle(
                        color: Colors.black
                      ),),
                    ),
                    const SizedBox(
                      height:10,
                    ),
                    // ignore: avoid_unnecessary_containers
                    Container(
                      child: const Text("RK Groups of Company"),
                    ),
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
