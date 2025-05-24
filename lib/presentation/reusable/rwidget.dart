import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Rwidget {
  static Drawer drawer(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xFF1E1E1E),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Top bar with Menu
            SizedBox(
              height: 6,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: const [
                  Icon(Icons.menu, color: Colors.white),
                ],
              ),
            ),
            SizedBox(height: 40),
            // StyleMate button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.grey[800],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: const [
                    CircleAvatar(
                      radius: 12,
                      backgroundColor: Colors.deepPurple,
                      child: Icon(Icons.person, size: 14, color: Colors.white),
                    ),
                    SizedBox(width: 8),
                    Text("StyleMate", style: TextStyle(color: Colors.white)),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Container(
                  width: 40,
                  height: 44,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(51, 51, 51, 1),
                      borderRadius: BorderRadius.circular(12)),
                  child: Icon(Icons.add, color: Colors.white)),
            ),
            SizedBox(
              width: 16,
              height: 20,
            ),
            // Icons Row
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.history, color: Colors.white),
                      SizedBox(width: 5),
                      Text(
                        'History',
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 16),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.search, color: Colors.white),
                      SizedBox(width: 5),
                      Icon(Icons.open_in_new, color: Colors.white, size: 24),
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 24),

            // Today Section with ExpansionTile
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Theme(
                data: Theme.of(context).copyWith(
                  dividerColor: Colors.transparent,
                  unselectedWidgetColor: Colors.white60,
                ),
                child: ExpansionTile(
                  title: const Text("Today",
                      style: TextStyle(color: Colors.white)),
                  iconColor: Colors.white,
                  children: List.generate(3, (index) {
                    return ListTile(
                      leading: const Icon(Icons.notes, color: Colors.white),
                      title:  Text("Event Cancelation",
                          style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12),),
                      trailing: PopupMenuButton(
                        icon: const Icon(Icons.more_vert, color: Colors.white),
                        color: Colors.grey[900],
                        itemBuilder: (context) => [
                          PopupMenuItem(
                            value: 'rename',
                            child: Row(
                              children:  [
                                Icon(Icons.edit, color: Colors.white, size: 18),
                                SizedBox(width: 8),
                                Text('Rename',
                                    style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12),)
                              ],
                            ),
                          ),
                          PopupMenuItem(
                            value: 'archive',
                            child: Row(
                              children: [
                                Icon(Icons.archive,
                                    color: Colors.white, size: 18),
                                SizedBox(width: 8),
                                Text('Archive',
                                    style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12)),
                              ],
                            ),
                          ),
                          PopupMenuItem(
                            value: 'delete',
                            child: Row(
                              children:  [
                                Icon(Icons.delete,
                                    color: Colors.white, size: 18),
                                SizedBox(width: 8),
                                Text('Delete',
                                    style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12),),
                              ],
                            ),
                          ),
                        ],
                        onSelected: (value) {
                          // handle rename/archive/delete here
                        },
                      ),
                    );
                  }),
                ),
              ),
            ),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text("View more", style: TextStyle(color: Colors.white60)),
            ),

            const Spacer(),

            // Bottom section
            ListTile(
              leading: const Icon(Icons.help, color: Colors.white),
              title: Text(
                "Help",
                style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 16),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.info_outline, color: Colors.white),
              title: Text(
                "About Us",
                style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 16),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.settings, color: Colors.white),
              title: Text(
                "Settings",
                style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 16),
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
