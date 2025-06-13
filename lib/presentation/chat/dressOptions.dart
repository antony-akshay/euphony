import 'package:evm/presentation/chat/imageUpload.dart';
import 'package:evm/presentation/reusable/rwidget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:svg_flutter/svg.dart';

class Dressoptions extends StatelessWidget {
  const Dressoptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(27, 28, 29, 1),
      drawer: Rwidget.drawer(context),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(27, 28, 29, 1),
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(Icons.menu_rounded, color: Colors.white),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
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
            padding: const EdgeInsets.only(right: 12.0),
            child: CircleAvatar(
              radius: 12,
              child: SvgPicture.asset(
                'assets/images/OBJECTS.svg',
                fit: BoxFit.fill,
              ),
            ),
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
                      color: Color.fromARGB(193, 211, 209, 209),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),
            Text(
              'This chatbot will only respond to event-related questions',
              style: GoogleFonts.poppins(
                color: Color.fromARGB(193, 211, 209, 209),
                fontWeight: FontWeight.w400,
                fontSize: 10,
              ),
            ),
            const SizedBox(height: 18),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 50),
              height: 500,
              child: RawScrollbar(
                thumbColor: Colors.white,
                radius: const Radius.circular(8),
                thickness: 4,
                thumbVisibility: true,
                child: ListView.separated(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: Container(
                        width: 50,
                        height: 62,
                        decoration: BoxDecoration(
                          color: Colors.grey[700],
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      titleAlignment: ListTileTitleAlignment.center,
                      title: Text(
                        'Women Fit and Flare Maroon Midi/Calf Length Dress',
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 8,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('#2399',
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 8,
                                fontWeight: FontWeight.w500,
                              )),
                          Text('Product link',
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 8,
                                fontWeight: FontWeight.w400,
                              )),
                          Text(
                            'https://www.flipkart.com/...',
                            style: GoogleFonts.poppins(
                              color: Colors.blue,
                              fontSize: 8,
                              fontWeight: FontWeight.w400,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    );
                  }, separatorBuilder: (BuildContext context, int index) { 
                    return SizedBox(height: 10,);
                   },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
