import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:svg_flutter/svg.dart';
import 'package:evm/presentation/reusable/rwidget.dart';

class Uploadpreview extends StatelessWidget {
  const Uploadpreview({super.key});

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
          const Padding(
            padding: EdgeInsets.only(right: 12.0),
            child: CircleAvatar(
              radius: 12,
              backgroundColor: Colors.transparent,
              child: Icon(Icons.person, size: 14, color: Colors.white),
            ),
          )
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              const SizedBox(height: 24),
              Column(
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
                          colors: [Color(0xFFE27FE5), Color(0xFF338FE3)],
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
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(42, 46, 49, 1),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Header Row
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Icon(Icons.arrow_back_ios_rounded,
                            color: Colors.white, size: 16),
                        SizedBox(width: 76),
                        Text(
                          'To help you obtain the Perfect Fit, Please answer the following:',
                          style: TextStyle(
                            fontSize: 8,
                            fontWeight: FontWeight.w400,
                            color: Color.fromARGB(193, 255, 255, 255),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                _buildDropdown('Select Country'),
                                const SizedBox(width: 17),
                                _buildDropdown('Select State'),
                              ],
                            ),
                            const SizedBox(height: 28),

                            // Dropdown Row 2
                            Row(
                              children: [
                                _buildDropdown('Select Gender'),
                                const SizedBox(width: 17),
                                _buildDropdown('Preferred Style'),
                              ],
                            ),
                            const SizedBox(height: 15),

                            Container(
                              width: 180,
                              height: 97,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 4),
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(33, 37, 42, 1),
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize
                                    .min, // Important to avoid taking up full height
                                children: [
                                  TextFormField(
                                    style: const TextStyle(
                                        color: Colors.white, fontSize: 8),
                                    decoration: InputDecoration(
                                      hintText:
                                          "If you have any suggestions like colors and patterns of dress prompt here....",
                                      hintStyle: GoogleFonts.poppins(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 7,
                                      ),
                                      border: InputBorder.none,
                                    ),
                                    maxLines:
                                        null, // Optional: allows multiline input
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      IconButton(
                                        icon: const Icon(Icons.mic,
                                            size: 14, color: Colors.white70),
                                        onPressed: () {},
                                      ),
                                      IconButton(
                                        icon: const Icon(Icons.send,
                                            size: 14, color: Colors.white70),
                                        onPressed: () {},
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              width: 150,
                              height: 200,
                              decoration: BoxDecoration(
                                color: Colors.grey[700],
                                borderRadius: BorderRadius.circular(6),
                              ),
                            ),
                            const SizedBox(height: 12),
                            Row(
                              children: [
                                _buildActionButton('Re upload'),
                                const SizedBox(width: 6),
                                _buildActionButton('Re take'),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),

                    const SizedBox(height: 8),

                    // Image & Buttons Row
                  ],
                ),
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
      ),
    );
  }

  static Widget _buildDropdown(String hint) {
    return Container(
      height: 25,
      width: 80,
      padding: const EdgeInsets.symmetric(horizontal: 6),
      decoration: BoxDecoration(
        color: Color.fromRGBO(33, 37, 42, 1),
        borderRadius: BorderRadius.circular(6),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: null,
          dropdownColor: Colors.grey[850],
          hint: Text(
            hint,
            style: GoogleFonts.poppins(
              color: const Color.fromARGB(193, 211, 209, 209),
              fontWeight: FontWeight.w400,
              fontSize: 7,
            ),
          ),
          icon:
              const Icon(Icons.arrow_drop_down, size: 14, color: Colors.white),
          isExpanded: true,
          items: ['Option 1', 'Option 2', 'Option 3']
              .map((item) => DropdownMenuItem<String>(
                    value: item,
                    child: Text(item,
                        style:
                            const TextStyle(fontSize: 10, color: Colors.white)),
                  ))
              .toList(),
          onChanged: (value) {},
        ),
      ),
    );
  }

  static Widget _buildActionButton(String label) {
    return Container(
      width: 70,
      height: 24,
      decoration: BoxDecoration(
        color: Colors.grey[700],
        borderRadius: BorderRadius.circular(6),
      ),
      alignment: Alignment.center,
      child: Text(
        label,
        style: GoogleFonts.poppins(
          color: Colors.white,
          fontWeight: FontWeight.w500,
          fontSize: 10,
        ),
      ),
    );
  }
}
