import 'package:evm/presentation/reusable/rwidget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:svg_flutter/svg.dart';

class Chatscreen extends StatelessWidget {
  Chatscreen({super.key});

  final List<String> categories = [
    "Event categories ↑",
    "Event categories ↑",
    "Event categories ↑"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Rwidget.drawer(context),
      backgroundColor: const Color.fromRGBO(27, 28, 29, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(27, 28, 29, 1),
        leading: Builder(
      builder: (context) {
        return IconButton(
          icon: const Icon(Icons.menu,color: Colors.white,),
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
        );
      },
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
            Expanded(
              child: SingleChildScrollView(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Logo and App Name
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset('assets/images/OBJECTS.svg'),
                        const SizedBox(width: 8),
                        Text(
                          'Wie',
                          style: GoogleFonts.pacifico(
                              color: Colors.white, fontSize: 20),
                        )
                      ],
                    ),
                    const SizedBox(height: 20),

                    // Welcome Text
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Hi, Emma Raducanu!',
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: 18),
                        ),
                        Text(
                          'How can I help you?',
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 32),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 12),
                        SizedBox(
                          width: 362,
                          child: Text(
                            'I’m your Event Assistant. Here to help you with all event-related queries. You can ask me about upcoming events, schedules, tickets, venues, and more!',
                            style: GoogleFonts.poppins(
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                              color: const Color.fromARGB(193, 211, 209, 209),
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 24),

                    // Chips
                    Wrap(
                      spacing: 10,
                      children: categories
                          .map((category) => Chip(
                                backgroundColor: Colors.grey[850],
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                label: Text(
                                  category,
                                  style: const TextStyle(color: Colors.white),
                                ),
                              ))
                          .toList(),
                    ),
                    const SizedBox(height: 8),

                    const Text(
                      "This chatbot will only respond to event related questions",
                      style: TextStyle(color: Colors.white60),
                    ),
                  ],
                ),
              ),
            ),

            // Chat Input
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 15),
                decoration: BoxDecoration(
                  color: Colors.grey[900],
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    TextField(
                      style: const TextStyle(color: Colors.white),
                      decoration: const InputDecoration(
                        hintText: "Ask Wie to assist you...",
                        hintStyle: TextStyle(color: Colors.white60),
                        border: InputBorder.none,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            IconButton(
                              icon:
                                  const Icon(Icons.mic, color: Colors.white70),
                              onPressed: () {},
                            ),
                            IconButton(
                              icon: const Icon(Icons.camera_alt_outlined,
                                  color: Colors.white70),
                              onPressed: () {},
                            ),
                            IconButton(
                              icon:
                                  const Icon(Icons.link, color: Colors.white70),
                              onPressed: () {},
                            ),
                            SvgPicture.asset('assets/images/styleme.svg'),
                          ],
                        ),
                        IconButton(
                          icon: const Icon(Icons.send, color: Colors.white70),
                          onPressed: () {},
                        ),
                      ],
                    ),
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
