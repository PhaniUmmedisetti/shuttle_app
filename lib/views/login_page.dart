import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:shuttle/controllers/auth_controller.dart';
import 'package:shuttle/views/signup_page.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            // width: w,
            // height: h,
            decoration: const BoxDecoration(
                image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("img/bg3.png"),
            )),
          ),
          // Container(
          //   decoration: BoxDecoration(color: Color.fromARGB(82, 229, 225, 225)),
          // ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  // crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const SizedBox(
                      height: 100,
                    ),
                    const Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 50,
                        color: Colors.deepOrange,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 120,
                    ),
                    TextField(
                      controller: emailController,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: const Color.fromARGB(213, 241, 240, 235),
                        hintText: "Email",
                        prefixIcon: const Icon(
                          Icons.mail,
                          color: Colors.deepOrange,
                        ),
                        // labelText: "Username",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextField(
                      obscureText: true,
                      controller: passwordController,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: const Color.fromARGB(213, 241, 240, 235),
                        hintText: "Password",
                        prefixIcon: const Icon(
                          Icons.key,
                          color: Colors.deepOrange,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 220.0),
                      child: Text(
                        "Forgot your password?",
                        style: TextStyle(
                          fontSize: 15,
                          shadows: <Shadow>[
                            Shadow(
                              offset: Offset(2.0, 2.0),
                              blurRadius: 3.0,
                              color: Color.fromARGB(255, 120, 39, 39),
                            ),
                          ],
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        AuthController.instance.login(
                          emailController.text.trim(),
                          passwordController.text.trim(),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        textStyle: const TextStyle(fontSize: 24),
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.deepOrange,
                        shadowColor: Colors.red,
                        shape: const BeveledRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(5),
                          ),
                        ),
                        elevation: 5,
                      ),
                      child: const Text('Login'),
                    ),
                    const SizedBox(
                      height: 150,
                    ),
                    RichText(
                      text: TextSpan(
                          text: "Don't have an account?",
                          style: const TextStyle(
                            fontSize: 20,
                            shadows: <Shadow>[
                              Shadow(
                                offset: Offset(8.0, 8.0),
                                blurRadius: 13.0,
                                color: Color.fromARGB(255, 85, 29, 29),
                              ),
                            ],
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                          children: [
                            TextSpan(
                              text: "Create",
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Get.to(() => const SignupScreen());
                                  print('create is clicked');
                                },
                              style: const TextStyle(
                                fontSize: 24,
                                shadows: <Shadow>[
                                  Shadow(
                                    offset: Offset(8.0, 8.0),
                                    blurRadius: 13.0,
                                    color: Color.fromARGB(255, 85, 29, 29),
                                  ),
                                ],
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ]),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
