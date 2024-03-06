import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_app/screens/home/ui/home.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.lock,
              size: 100,
            ),
            const Text(
              "Login To Continue",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 50,
            ),
            InkWell(
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => const HomePage())));
              },
              child: Container(
                width: 280,
                height: 60,
                decoration: BoxDecoration(
                    boxShadow: const [BoxShadow(blurRadius: 4.0)],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.grey,
                      width: 2,
                    )),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      width: 45,
                      height: 45,
                      child: Image.network(
                          "https://img.icons8.com/?size=96&id=17949&format=png"),
                    ),
                    const Text(
                      "Login With Google",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
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
