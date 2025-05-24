import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:svg_flutter/svg.dart';

class HistoryPage extends StatelessWidget {
  final List<String> historyItems = List.generate(8, (index) => "How to download Ticket");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
            backgroundColor: const Color.fromRGBO(27, 28, 29, 1),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SvgPicture.asset('assets/images/OBJECTS.svg'),
                const SizedBox(width: 8),
                Text(
                  'Wie',
                  style:
                      GoogleFonts.pacifico(color: Colors.white, fontSize: 20),
                ),
              ],
            )),
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Container(
              width: 157,
              height: 28,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(51, 51, 52, 1),
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0,top: 5),
                child: TextFormField(
                  style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 12),
                  decoration: InputDecoration.collapsed(
                    fillColor: Colors.white,
                      hintText: 'search',
                      hintStyle: GoogleFonts.poppins(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 12)),
                ),
              ),
            ),
            ),

            const SizedBox(height: 10),

            // History Container
            Expanded(
              child: Container(
                margin: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.grey[900],
                  borderRadius: BorderRadius.circular(16),
                ),
                child: ListView(
                  padding: const EdgeInsets.all(16),
                  children: [
                    buildSection("Today", historyItems.take(2).toList()),
                    buildSection("Yesterday", historyItems.take(2).toList()),
                    buildSection("Day, Date and Month", historyItems.skip(2).toList()),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildSection(String title, List<String> items) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Section title with trash icon
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
            const Icon(Icons.delete_outline, color: Colors.white),
          ],
        ),
        const SizedBox(height: 8),

        // Section items
        ...items.map((text) => ListTile(
              contentPadding: EdgeInsets.zero,
              leading: const Icon(Icons.notes, color: Colors.white),
              title: Text(text, style: const TextStyle(color: Colors.white)),
              trailing: const Icon(Icons.check_box_outline_blank, color: Colors.white),
            )),
        const SizedBox(height: 16),
      ],
    );
  }
}