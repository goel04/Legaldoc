import 'package:flutter/material.dart';
import 'package:legaldoc/pages/home.dart';
import 'package:legaldoc/pages/login.dart';

class Startup extends StatelessWidget {
  const Startup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("images/logo.jpg"),
              SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Home()),
                  );
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 0, 0, 0),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
                    },
                    child: const Text(
                      "Get Your Document Ready",
                      style: TextStyle(
                        color: Color.fromARGB(255, 250, 248, 248),
                        fontSize: 26.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
