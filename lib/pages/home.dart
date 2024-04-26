import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:legaldoc/pages/book.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: EdgeInsets.only(top: 20, right: 20, left: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hello,",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      "Lakshay Goel",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    "images/new logo.jpg", // Check your image path
                    height: 80,
                    width: 80,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.0),
            Divider(color: Colors.amber),
            SizedBox(height: 10.0),
            Text(
              "Services",
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Booking(service: 'Apply For MSME Documents')),
                          );
                        },
                      child: Container(
                        height: 250,
                        width: 250,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(235, 227, 190, 239),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: [
                            Image.asset(
                              "images/msme.png", // Check your image path
                              height: 200,
                              width: 200,
                            ),
                            Text(
                              "Apply For MSME Documents",
                              style: TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Booking(service: 'Apply For FSSAI Certificate')),
                          );

                      },
                      child: Container(
                        height: 250,
                        width: 250,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(235, 216, 160, 213),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: [
                            Image.asset(
                              "images/fssai.png", // Check your image path
                              height: 200,
                              width: 200,
                            ),
                            Text(
                              "Apply For FSSAI Certificate",
                              style: TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 30),
                Column(
                  children: [
                    Container(
                      height: 250,
                      width: 250,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(235, 227, 190, 239),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                          Image.asset(
                            "images/GST.jpg", // Check your image path
                            height: 200,
                            width: 200,
                          ),
                          Text(
                            "Apply For GST Documents",
                            style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 30),
                    Container(
                      height: 250,
                      width: 250,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(235, 216, 160, 213),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                          Image.asset(
                            "images/bank.png", 
                            height: 200,
                            width: 200,
                          ),
                          Text(
                            "Apply For Bank Doc",
                            style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
