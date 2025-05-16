import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:svg_flutter/svg.dart';

class Chathome extends StatelessWidget {
  const Chathome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(27, 28, 29, 1),
      body: SafeArea(child: 
      Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset('assets/images/OBJECTS.svg'),
              Text('Wie',style: GoogleFonts.pacifico(color: Colors.white,fontSize: 20),)
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Hi,Emma Raducanu!',style: GoogleFonts.poppins(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 18),),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Welcome to',style: GoogleFonts.poppins(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 32),),
                  ShaderMask(
              shaderCallback: (bounds) => LinearGradient(
                colors: [
                  Color(0xFFE27FE5), // Pink
                  Color(0xFF338FE3), // Blue
                ],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ).createShader(Rect.fromLTWH(0, 0, bounds.width, bounds.height)),
              child: Text(
                'StyleMate',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w700,
                  color: Colors.white, // Color must be set to white for ShaderMask
                ),
              ),
                      ),
                ],
              ),
              Text('I’m your Event Assistant . Ready to help you choose perfect outfit for you!',style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.w400,color: const Color.fromARGB(193, 211, 209, 209),),),
            ],
          ),
          Container(width: 300,
          height: 400,
          decoration: BoxDecoration(
            color: Color.fromRGBO(33, 37, 42, 1),
            borderRadius: BorderRadius.circular(12)
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Text('Click a Picture',style: GoogleFonts.poppins(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontSize: 14
            ),),
            SizedBox(
              height: 120,
              width: 120,
              child: SvgPicture.asset('assets/images/ri_camera-line.svg')),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset('assets/images/Vector.svg'),
                SizedBox(height: 15),
                Container(
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 14),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFFE27FE5), // Pink
                      Color(0xFF338FE3), // Blue
                    ],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                  boxShadow: [
                    BoxShadow(
                      // ignore: deprecated_member_use
                      color: Colors.blue.withOpacity(0.3),
                      blurRadius: 8,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: Text(
                  'Make your style',
                  style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 10,
                    fontWeight: FontWeight.w400
                  )
                ),
                          ),
              ],
            ),
          ],),),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Please place yourself in the Frame to click your picture',style: GoogleFonts.poppins(
                fontWeight: FontWeight.w400,
                fontSize: 14,
                color: Color.fromARGB(193, 211, 209, 209)
              ),),
              SizedBox(height: 15,),
              Text('This chatbot will only respond to event related questions',style:GoogleFonts.poppins(
                color: Color.fromARGB(193, 211, 209, 209),
                fontWeight: FontWeight.w400,
                fontSize: 10
              ),),
            ],
          )
        ],
      )),
    );
  }
}