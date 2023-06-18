import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LaunchScreen extends StatefulWidget {
  const LaunchScreen({Key? key}) : super(key: key);

  @override
  State<LaunchScreen> createState() => _LaunchScreenState();
}

class _LaunchScreenState extends State<LaunchScreen> {

  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 3),()  {
    // Navigator.pushNamed(context, '/launch_screen');
    Navigator.pushReplacementNamed(context, '/home_screen');
    });
  }

  @override
  void dispose() {
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: AlignmentDirectional.topStart,
            end: AlignmentDirectional.bottomEnd,
            colors: [
              Colors.blue.shade100,
              Colors.orange.shade100,

            ]
          )
        ),
        child: Text('مسبحةأذكار',
        style: GoogleFonts.tajawal(
            fontSize: 24,
           fontWeight: FontWeight.bold,
        ),
        ),
      ),
    );
  }
}

