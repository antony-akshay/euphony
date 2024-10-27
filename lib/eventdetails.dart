import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:readmore/readmore.dart';
import 'package:svg_flutter/svg.dart';

class EventDetails extends StatelessWidget {
  EventDetails({super.key});

  final List<String> imageAvatar = [
    'assets/images/Ellipse 2.jpg',
    'assets/images/Ellipse 3.jpg',
    'assets/images/Ellipse 4.jpg'
  ];

  final String content =
      'viverra venenatis non faucibus quam tortor. nulla, cursus Donec eget sit placerat Cras Lorem sollicitudin. lacus, In Sed In';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: SizedBox.fromSize(
        size: const Size(360, 60),
        child: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.blue[800],
          child: Text(
            'Book Now',
            style: GoogleFonts.outfit(
                color: Colors.white, fontWeight: FontWeight.w700, fontSize: 14),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 352,
              width: 402,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/eventImage.png'),
                  ),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 20, top: 30),
                    child: CircleAvatar(
                      backgroundColor: Colors.grey,
                      child: Icon(Icons.arrow_back_ios_new_rounded,
                          color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.4),
                    child: Container(
                      width: 397,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(49),
                            bottomRight: Radius.circular(44)),
                        boxShadow: [
                          BoxShadow(
                            color: const Color.fromARGB(255, 94, 92, 92)
                                .withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 0,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(right: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Container(
                                    width: 90,
                                    height: 30,
                                    decoration: BoxDecoration(
                                      color: Colors.transparent,
                                      borderRadius: BorderRadius.circular(30),
                                      boxShadow: [
                                        BoxShadow(
                                          color: const Color.fromARGB(
                                                  255, 138, 134, 134)
                                              .withOpacity(0.3),
                                          spreadRadius: 5,
                                          blurRadius: 0,
                                          offset: const Offset(0, 3),
                                        ),
                                      ],
                                    ),
                                    child: Center(
                                      child: Text(
                                        '1k+ attending',
                                        style: GoogleFonts.outfit(
                                            color: Colors.white,
                                            fontSize: 10,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Container(
                                    width: 90,
                                    height: 30,
                                    decoration: BoxDecoration(
                                      color: Colors.transparent,
                                      borderRadius: BorderRadius.circular(30),
                                      boxShadow: [
                                        BoxShadow(
                                          color: const Color.fromARGB(
                                                  255, 138, 134, 134)
                                              .withOpacity(0.3),
                                          spreadRadius: 5,
                                          blurRadius: 0,
                                          offset: const Offset(0, 3),
                                        ),
                                      ],
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Music',
                                        style: GoogleFonts.outfit(
                                            color: Colors.white,
                                            fontSize: 10,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            CircleAvatar(
                                backgroundColor: Colors.grey,
                                child: SvgPicture.asset(
                                    'assets/images/Vector.svg'))
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Harmony Nights',
                    style: GoogleFonts.outfit(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.w700),
                  ),
                  Row(
                    children: [
                      SvgPicture.asset('assets/images/Group.svg'),
                      const SizedBox(width: 7),
                      Text(
                        '06:30 PM, 17 Oct 2024',
                        style: GoogleFonts.outfit(
                            color: Colors.black,
                            fontSize: 11,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SvgPicture.asset('assets/images/loc.svg'),
                      const SizedBox(width: 7),
                      Text(
                        'Old Harbour Hotel, Fort Kochi',
                        style: GoogleFonts.outfit(
                            color: Colors.black,
                            fontSize: 11,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      for (int i = 0; i < 3; i++)
                        Align(
                          widthFactor: 0.5,
                          child: CircleAvatar(
                            radius: 13,
                            backgroundImage: AssetImage(imageAvatar[i]),
                          ),
                        ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        '1k+ attending',
                        style: GoogleFonts.outfit(
                            color: Colors.black,
                            fontSize: 11,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  ListTile(
                      leading: const CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/images/Ellipse 1.jpg'),
                      ),
                      title: Text(
                        'Beyoncé’s',
                        style: GoogleFonts.outfit(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                      subtitle: Text(
                        'Event Organizer',
                        style: GoogleFonts.outfit(
                            color: Colors.black,
                            fontSize: 11,
                            fontWeight: FontWeight.w400),
                      ),
                      trailing: GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: 73,
                          height: 30,
                          decoration: BoxDecoration(
                              color: Colors.blue[400],
                              borderRadius: BorderRadius.circular(30)),
                          child: Center(
                            child: Text(
                              'Follow',
                              style: GoogleFonts.outfit(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        ),
                      )),
                  Text(
                    'About this event',
                    style: GoogleFonts.outfit(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                  ReadMoreText(
                    content,
                    trimLines: 3,
                    textAlign: TextAlign.justify,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: 'read more',
                    trimExpandedText: 'read less',
                    lessStyle: GoogleFonts.outfit(
                        color: Colors.indigo,
                        fontSize: 10,
                        fontWeight: FontWeight.w300),
                    moreStyle: GoogleFonts.outfit(
                        color: Colors.indigo,
                        fontSize: 10,
                        fontWeight: FontWeight.w300),
                    style: GoogleFonts.outfit(
                        color: Colors.black,
                        fontSize: 10,
                        fontWeight: FontWeight.w300),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: 360,
                          height: 140,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: Image.asset('assets/images/Mask group.jpg'))),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0,left: 5),
                    child: Text(
                      'Featured Events',
                      style: GoogleFonts.outfit(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Container(
                      width: 360,
                      height: 170,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images/soundwave.png'),
                          )),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 16, top: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20),
                                      child: Container(
                                        width: 90,
                                        height: 30,
                                        decoration: BoxDecoration(
                                          color: Colors.transparent,
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          boxShadow: [
                                            BoxShadow(
                                              color: const Color.fromARGB(
                                                      255, 138, 134, 134)
                                                  .withOpacity(0.3),
                                              spreadRadius: 5,
                                              blurRadius: 0,
                                              offset: const Offset(0, 3),
                                            ),
                                          ],
                                        ),
                                        child: Center(
                                          child: Text(
                                            '1k+ attending',
                                            style: GoogleFonts.outfit(
                                                color: Colors.white,
                                                fontSize: 10,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20),
                                      child: Container(
                                        width: 90,
                                        height: 30,
                                        decoration: BoxDecoration(
                                          color: Colors.transparent,
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          boxShadow: [
                                            BoxShadow(
                                              color: const Color.fromARGB(
                                                      255, 138, 134, 134)
                                                  .withOpacity(0.3),
                                              spreadRadius: 5,
                                              blurRadius: 0,
                                              offset: const Offset(0, 3),
                                            ),
                                          ],
                                        ),
                                        child: Center(
                                          child: Text(
                                            'Music',
                                            style: GoogleFonts.outfit(
                                                color: Colors.white,
                                                fontSize: 10,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                CircleAvatar(
                                    backgroundColor: Colors.grey,
                                    child: SvgPicture.asset(
                                        'assets/images/Vector.svg'))
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 9.5),
                            child: Container(
                              height: 50,
                              width: 350,
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: const BorderRadius.only(
                                    bottomLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(10)),
                                boxShadow: [
                                  BoxShadow(
                                    color: const Color.fromARGB(255, 94, 92, 92)
                                        .withOpacity(0.5),
                                    spreadRadius: 5,
                                    blurRadius: 0,
                                    offset: const Offset(0, 3),
                                  ),
                                ],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 10, top: 2, right: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Soundwave Sessions',
                                          style: GoogleFonts.outfit(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w700,
                                              fontSize: 15),
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            const Icon(
                                              Icons.location_on_outlined,
                                              color: Colors.white,
                                              size: 19,
                                            ),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              'Kochi • 17 Oct 2024',
                                              style: GoogleFonts.outfit(
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 11,
                                                  color: Colors.white),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                    const Icon(
                                      Icons.chevron_right,
                                      color: Colors.white,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Container(
                      width: 360,
                      height: 170,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images/soundwave.png'),
                          )),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 16, top: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20),
                                      child: Container(
                                        width: 90,
                                        height: 30,
                                        decoration: BoxDecoration(
                                          color: Colors.transparent,
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          boxShadow: [
                                            BoxShadow(
                                              color: const Color.fromARGB(
                                                      255, 138, 134, 134)
                                                  .withOpacity(0.3),
                                              spreadRadius: 5,
                                              blurRadius: 0,
                                              offset: const Offset(0, 3),
                                            ),
                                          ],
                                        ),
                                        child: Center(
                                          child: Text(
                                            '1k+ attending',
                                            style: GoogleFonts.outfit(
                                                color: Colors.white,
                                                fontSize: 10,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20),
                                      child: Container(
                                        width: 90,
                                        height: 30,
                                        decoration: BoxDecoration(
                                          color: Colors.transparent,
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          boxShadow: [
                                            BoxShadow(
                                              color: const Color.fromARGB(
                                                      255, 138, 134, 134)
                                                  .withOpacity(0.3),
                                              spreadRadius: 5,
                                              blurRadius: 0,
                                              offset: const Offset(0, 3),
                                            ),
                                          ],
                                        ),
                                        child: Center(
                                          child: Text(
                                            'Music',
                                            style: GoogleFonts.outfit(
                                                color: Colors.white,
                                                fontSize: 10,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                CircleAvatar(
                                    backgroundColor: Colors.grey,
                                    child: SvgPicture.asset(
                                        'assets/images/Vector.svg'))
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 9.5),
                            child: Container(
                              height: 50,
                              width: 350,
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: const BorderRadius.only(
                                    bottomLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(10)),
                                boxShadow: [
                                  BoxShadow(
                                    color: const Color.fromARGB(255, 94, 92, 92)
                                        .withOpacity(0.5),
                                    spreadRadius: 5,
                                    blurRadius: 0,
                                    offset: const Offset(0, 3),
                                  ),
                                ],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 10, top: 2, right: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Soundwave Sessions',
                                          style: GoogleFonts.outfit(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w700,
                                              fontSize: 15),
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            const Icon(
                                              Icons.location_on_outlined,
                                              color: Colors.white,
                                              size: 19,
                                            ),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              'Kochi • 17 Oct 2024',
                                              style: GoogleFonts.outfit(
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 11,
                                                  color: Colors.white),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                    const Icon(
                                      Icons.chevron_right,
                                      color: Colors.white,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Container(
                      width: 360,
                      height: 170,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images/soundwave.png'),
                          )),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 16, top: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20),
                                      child: Container(
                                        width: 90,
                                        height: 30,
                                        decoration: BoxDecoration(
                                          color: Colors.transparent,
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          boxShadow: [
                                            BoxShadow(
                                              color: const Color.fromARGB(
                                                      255, 138, 134, 134)
                                                  .withOpacity(0.3),
                                              spreadRadius: 5,
                                              blurRadius: 0,
                                              offset: const Offset(0, 3),
                                            ),
                                          ],
                                        ),
                                        child: Center(
                                          child: Text(
                                            '1k+ attending',
                                            style: GoogleFonts.outfit(
                                                color: Colors.white,
                                                fontSize: 10,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20),
                                      child: Container(
                                        width: 90,
                                        height: 30,
                                        decoration: BoxDecoration(
                                          color: Colors.transparent,
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          boxShadow: [
                                            BoxShadow(
                                              color: const Color.fromARGB(
                                                      255, 138, 134, 134)
                                                  .withOpacity(0.3),
                                              spreadRadius: 5,
                                              blurRadius: 0,
                                              offset: const Offset(0, 3),
                                            ),
                                          ],
                                        ),
                                        child: Center(
                                          child: Text(
                                            'Music',
                                            style: GoogleFonts.outfit(
                                                color: Colors.white,
                                                fontSize: 10,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                CircleAvatar(
                                    backgroundColor: Colors.grey,
                                    child: SvgPicture.asset(
                                        'assets/images/Vector.svg'))
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 9.5),
                            child: Container(
                              height: 50,
                              width: 350,
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: const BorderRadius.only(
                                    bottomLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(10)),
                                boxShadow: [
                                  BoxShadow(
                                    color: const Color.fromARGB(255, 94, 92, 92)
                                        .withOpacity(0.5),
                                    spreadRadius: 5,
                                    blurRadius: 0,
                                    offset: const Offset(0, 3),
                                  ),
                                ],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 10, top: 2, right: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Soundwave Sessions',
                                          style: GoogleFonts.outfit(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w700,
                                              fontSize: 15),
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            const Icon(
                                              Icons.location_on_outlined,
                                              color: Colors.white,
                                              size: 19,
                                            ),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              'Kochi • 17 Oct 2024',
                                              style: GoogleFonts.outfit(
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 11,
                                                  color: Colors.white),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                    const Icon(
                                      Icons.chevron_right,
                                      color: Colors.white,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        )),
      ),
    );
  }
}
