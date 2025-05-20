import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:svg_flutter/svg.dart';

class PoseInstruction extends StatelessWidget {
  const PoseInstruction({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(27, 28, 29, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(27, 28, 29, 1),
        leading: const Icon(Icons.menu_rounded, color: Colors.white),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SvgPicture.asset('assets/images/OBJECTS.svg'),
            const SizedBox(width: 8),
            Text(
              'Wie',
              style: GoogleFonts.pacifico(color: Colors.white, fontSize: 20),
            ),
          ],
        ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right:12.0),
          child: CircleAvatar(radius: 12,child: SvgPicture.asset('assets/images/OBJECTS.svg',fit: BoxFit.fill,),),
        )
      ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 24),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Hi, Emma Raducanu!',
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Welcome to ',
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 32,
                      ),
                    ),
                    ShaderMask(
                      shaderCallback: (bounds) => const LinearGradient(
                        colors: [
                          Color(0xFFE27FE5),
                          Color(0xFF338FE3),
                        ],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ).createShader(
                          Rect.fromLTWH(0, 0, bounds.width, bounds.height)),
                      child: const Text(
                        'StyleMate',
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  child: Text(
                    'I’m your Event Assistant. Ready to help you choose the perfect outfit for you!',
                    style: GoogleFonts.poppins(
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromARGB(193, 211, 209, 209),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),
            Stack(
              children: [
                SvgPicture.asset(
                  'assets/images/poseinstruction.svg',
                  fit: BoxFit.cover,
                ),
                Positioned(
                  bottom: 1,
                  left: 0,
                  right: 0,
                  child: Center(
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 23, vertical: 11),
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [
                            Color(0xFFE27FE5),
                            Color(0xFF338FE3),
                          ],
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child:  Text(
                        'Continue',
                        style: GoogleFonts.poppins(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 10),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            Text(
              'This chatbot will only respond to event-related questions',
              style: GoogleFonts.poppins(
                color: const Color.fromARGB(193, 211, 209, 209),
                fontWeight: FontWeight.w400,
                fontSize: 10,
              ),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
