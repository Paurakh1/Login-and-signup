import 'package:flutter/material.dart';


class Loginpage extends StatefulWidget {
  const Loginpage({Key? key}) : super(key: key);

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('photos/login page.png'), fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            // ignore: avoid_unnecessary_containers
            Container(
              padding: const EdgeInsets.only(left: 35, top: 130),
              child: const Text(
                'Welcome,\nBack',
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
                    top: MediaQuery.of(context).size.height * 0.4,
                    right: 35,
                    left: 35),
                child: Column(
                  children: [
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Login In",
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, 'SignUp');
                          },
                          child: const Text(
                            "Signup",
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                color: Colors.black,
                                fontSize: 17),
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Forget Password ?",
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                color: Colors.purple,
                                fontSize: 17),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 180,
                    ),
                    // ignore: avoid_unnecessary_containers
                    Container(
                      child: const Text("Powered by",style: TextStyle(
                        color: Colors.purple
                      ),),
                    ),
                    const SizedBox(
                      height:10,
                    ),
                    // ignore: avoid_unnecessary_containers
                    Container(
                      child: const Text("Rk Groups of Company"),
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
