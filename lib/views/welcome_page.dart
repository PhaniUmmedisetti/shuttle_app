import 'package:flutter/material.dart';
import 'package:shuttle/controllers/auth_controller.dart';

class WelcomePage extends StatelessWidget {
  String email;
   WelcomePage({super.key, required this.email});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            // width: w,
            // height: h,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("img/colorbg.png"),
              ),
            ),
          ),
          // Container(
          //   decoration: BoxDecoration(color: Color.fromARGB(82, 229, 225, 225)),
          // ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16, top: 50),
            child: Center(
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                // crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 140.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        CircleAvatar(
                          radius: 40,
                          backgroundImage: AssetImage("img/bg2.png"),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 80,
                  ),
                  const Text(
                    "Welcome",
                    style: TextStyle(
                      color: Colors.deepOrange,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  // const Text('Phani'),
                   Text(email),
                  const SizedBox(height: 80),
                  ElevatedButton(
                    onPressed: () {
                     AuthController.instance.logout();
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
                    child: const Text('Logout'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
