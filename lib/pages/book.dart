// ignore_for_file: must_be_immutable

import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import "package:legaldoc/pages/thank.dart";

class Booking extends StatefulWidget {
  String service;
  Booking({required this.service });
  @override
  State<Booking> createState() => _BookingState();
}

class _BookingState extends State<Booking> {
  DateTime _selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      firstDate: DateTime(2024),
      lastDate: DateTime(2025),
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }

  TimeOfDay _selectedTime = TimeOfDay.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Container(
        margin: EdgeInsets.only(left: 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Icon(Icons.arrow_back_ios_new_rounded, color: Color.fromARGB(255, 255, 255, 255), size: 30,),
              ),
            ),
            SizedBox(height: 30.0,),
            Text(
              "Let's create your\n dream in reality",
              style: TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30,),
            Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
              child: Image.asset(
                "images/trust.png",
                fit: BoxFit.cover,
                alignment: Alignment.center,
              ),
            ),
            Text(
              widget.service,
              style: TextStyle(color: const Color.fromARGB(255, 128, 102, 102), fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Container(
              padding: EdgeInsets.only(top: 10, bottom: 30),
              decoration: BoxDecoration(color: Color.fromARGB(255, 0, 0, 0), borderRadius: BorderRadius.circular(20)),
              width: 1000,
              height: 150,
              child: Column(
                children: [
                  Text(
                    "Schedule a Call date",
                    style: TextStyle(color: Colors.white, fontSize: 50, fontWeight: FontWeight.w500),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          _selectDate(context);
                        },
                        child: Icon(Icons.calendar_month, color: Colors.white, size: 30,),
                      ),
                      SizedBox(height: 8,),
                      Text(
                        "${_selectedDate.day}/${_selectedDate.month}/${_selectedDate.year}",
                        style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 5,),
            Container(
              padding: EdgeInsets.only(top: 10, bottom: 30),
              decoration: BoxDecoration(color: Color.fromARGB(255, 233, 233, 233), borderRadius: BorderRadius.circular(20)),
              width: 1000,
              height: 160,
              child: Column(
                children: [
                  Text(
                    "Schedule a Call Time",
                    style: TextStyle(color: Colors.black, fontSize: 50, fontWeight: FontWeight.w500),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          _selectDate(context);
                        },
                        child: Icon(Icons.alarm, color: Colors.black, size: 30,),
                      ),
                      SizedBox(height: 10,),
                      Text(
                        "${_selectedTime}",
                        style: TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.w500),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 5,),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Thank(title: 'Thank You')));
              },
              child: Container(
                width: 1000,
                padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 201, 136, 110),
                  borderRadius: BorderRadius.circular(60),
                ),
                child: Center(
                  child: const Text(
                    "Request a call",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
