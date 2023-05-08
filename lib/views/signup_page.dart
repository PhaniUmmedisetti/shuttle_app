import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shuttle/controllers/auth_controller.dart';
import 'package:shuttle/views/login_page.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  AuthController controller = Get.put(AuthController());
  final passwordController = TextEditingController();
  final emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    List images = [
      "g.png",
      "t.png",
      "f.png",
    ];

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
                image: AssetImage("img/badminton.png"),
              ),
            ),
          ),
          // Container(
          //   decoration: BoxDecoration(color: Color.fromARGB(82, 229, 225, 225)),
          // ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16, top: 50),
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  // crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 140.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const CircleAvatar(
                            radius: 40,
                            backgroundImage: AssetImage("img/badminton.png"),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 32.0),
                            child: ElevatedButton(
                              onPressed: () {
                                Get.to(() => const LoginScreen());
                              },
                              style: ElevatedButton.styleFrom(
                                textStyle: const TextStyle(fontSize: 16),
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
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 80,
                    ),
                    Text("Sign Up",
                        style: TextStyle(
                            fontSize: 40.0,
                            fontWeight: FontWeight.bold,
                            foreground: Paint()
                              ..shader = const LinearGradient(
                                colors: <Color>[
                                  Colors.black,
                                  Colors.white,
                                  Colors.deepOrange
                                  //add more color here.
                                ],
                              ).createShader(const Rect.fromLTWH(
                                  0.0, 0.0, 200.0, 100.0)))),
                    const SizedBox(
                      height: 98,
                    ),
                    TextField(
                      controller: emailController,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: const Color.fromARGB(213, 241, 240, 235),
                        hintText: "Enter your email",
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
                        hintText: "Enter password",
                        prefixIcon: const Icon(
                          Icons.key,
                          color: Colors.deepOrange,
                        ),
                        // labelText: "Username",
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
                        // AuthController.instance.register
                        AuthController.instance.register(
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
                      child: const Text('Sign up'),
                    ),
                    const SizedBox(
                      height: 160,
                    ),
                    RichText(
                      text: const TextSpan(
                        text: "Sign in using one of these methods",
                        style: TextStyle(
                          fontSize: 20,
                          shadows: <Shadow>[
                            Shadow(
                              offset: Offset(2.0, 2.0),
                              blurRadius: 13.0,
                              color: Color.fromARGB(255, 173, 161, 161),
                            ),
                          ],
                          color: Colors.deepOrange,
                          fontWeight: FontWeight.bold,
                        ),
                        // children: [
                        //   TextSpan(
                        //     text: " Login",
                        //     // recognizer: TapGestureRecognizer(),
                        //     style: TextStyle(
                        //       fontSize: 24,
                        //       shadows: <Shadow>[
                        //         Shadow(
                        //           offset: Offset(2.0, 2.0),
                        //           blurRadius: 13.0,
                        //           color: Color.fromARGB(255, 173, 161, 161),
                        //         ),
                        //       ],
                        //       color: Colors.deepOrange,
                        //       fontWeight: FontWeight.bold,
                        //     ),
                        //   ),
                        // ]
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Wrap(
                      children: List<Widget>.generate(3, (index) {
                        return Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.grey[500],
                            child: CircleAvatar(
                              radius: 25,
                              backgroundImage:
                                  AssetImage("img/" + images[index]),
                            ),
                          ),
                        );
                      }),
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
