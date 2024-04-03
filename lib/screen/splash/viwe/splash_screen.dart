import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed( const Duration(seconds:3),() => Navigator.pushReplacementNamed(context, 'home'));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
       body: Center(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             CircleAvatar(
               radius: 70,
                 backgroundImage:AssetImage("assets/image/bhagvat2.png") ,
                      ),
             SizedBox(height: 5,),
             Text("|| भगवत गीता ||",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),)
             ]
             ),
       ),
    );
  }
}
