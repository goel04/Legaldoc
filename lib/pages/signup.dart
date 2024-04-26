import 'package:flutter/material.dart';
import 'package:legaldoc/pages/home.dart';
import 'package:legaldoc/pages/login.dart';

class Signup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios, size: 20, color: Colors.black,),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 40),
          height: MediaQuery.of(context).size.height - 50,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                children: <Widget>[
                  FadeInUp(
                    duration: Duration(milliseconds: 1000), 
                    child: Text("Sign up", style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold
                    ),),
                  ),
                  SizedBox(height: 20,),
                  FadeInUp(
                    duration: Duration(milliseconds: 1200), 
                    child: Text("Create an account, It's free", style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey[700]
                    ),),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  FadeInUp(
                    duration: Duration(milliseconds: 1200), 
                    child: makeInput(label: "Email"),
                  ),
                  FadeInUp(
                    duration: Duration(milliseconds: 1300), 
                    child: makeInput(label: "Password", obscureText: true),
                  ),
                  FadeInUp(
                    duration: Duration(milliseconds: 1400), 
                    child: makeInput(label: "Confirm Password", obscureText: true),
                  ),
                ],
              ),
              FadeInUp(
                duration: Duration(milliseconds: 1500), 
                child: Container(
                  padding: EdgeInsets.only(top: 3, left: 3),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(color: Colors.black),
                  ),
                  child: MaterialButton(
                    minWidth: double.infinity,
                    height: 60,
                    onPressed: () {
                                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));

                    },
                    color: Colors.greenAccent,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)
                    ),
                    child: Text("Sign up", style: TextStyle(
                      fontWeight: FontWeight.w600, 
                      fontSize: 18
                    ),),
                  ),
                ),
              ),
              FadeInUp(
                duration: Duration(milliseconds: 1600), 
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("Already have an account?"),
                      Text(" Login", style: TextStyle(
                        fontWeight: FontWeight.w600, fontSize: 18
                      ),),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget makeInput({label, obscureText = false}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(label, style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w400,
          color: Colors.black87
        ),),
        SizedBox(height: 5,),
        TextField(
          obscureText: obscureText,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade400)
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade400)
            ),
          ),
        ),
        SizedBox(height: 30,),
      ],
    );
  }
}

class FadeInUp extends StatefulWidget {
  final Duration duration;
  final Widget child;

  FadeInUp({required this.duration, required this.child});

  @override
  _FadeInUpState createState() => _FadeInUpState();
}

class _FadeInUpState extends State<FadeInUp> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _offsetAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: widget.duration,
    );
    _offsetAnimation = Tween<Offset>(
      begin: Offset(0.0, 1.5),
      end: Offset.zero,
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ),
    );
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _offsetAnimation,
      child: widget.child,
    );
  }
}
