import 'package:evm/domain/chat/messageModel.dart';
import 'package:evm/presentation/reusable/rwidget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:svg_flutter/svg.dart';

@immutable
class chattingScreen extends StatefulWidget {
  chattingScreen({super.key});

  @override
  State<chattingScreen> createState() => _chattingScreenState();
}

class _chattingScreenState extends State<chattingScreen> {
  TextEditingController chatController = TextEditingController();

  List<Message> messages = [
    Message(
      text: 'Hey there!',
      date: DateTime.now().subtract(Duration(minutes: 10)),
      isSentByMe: true,
    ),
    Message(
      text:
          'Hi! How can I help you today? i dont think walter white is busy in this hour of the day',
      date: DateTime.now().subtract(Duration(minutes: 9)),
      isSentByMe: false,
    ),
    Message(
      text: 'I was wondering about the meeting time.',
      date: DateTime.now().subtract(Duration(minutes: 8)),
      isSentByMe: true,
    ),
    Message(
      text: 'It starts at 3 PM today.',
      date: DateTime.now().subtract(Duration(minutes: 7)),
      isSentByMe: false,
    ),
    Message(
      text: 'Thanks! Is it online or offline?',
      date: DateTime.now().subtract(Duration(minutes: 6)),
      isSentByMe: true,
    ),
    Message(
      text: 'It will be conducted via Zoom.',
      date: DateTime.now().subtract(Duration(minutes: 5)),
      isSentByMe: false,
    ),
    Message(
      text: 'Great! Could you send the link?',
      date: DateTime.now().subtract(Duration(minutes: 4)),
      isSentByMe: true,
    ),
    Message(
      text: 'Sure, here it is: zoom.us/xyz',
      date: DateTime.now().subtract(Duration(minutes: 3)),
      isSentByMe: false,
    ),
    Message(
      text: 'Got it. Thank you!',
      date: DateTime.now().subtract(Duration(minutes: 2)),
      isSentByMe: true,
    ),
    Message(
      text: 'You’re welcome! 😊',
      date: DateTime.now().subtract(Duration(minutes: 1)),
      isSentByMe: false,
    ),
  ].reversed.toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      drawer: Rwidget.drawer(context),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(27, 28, 29, 1),
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: const Icon(
                Icons.menu,
                color: Colors.white,
              ),
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
              child: GroupedListView(
            reverse: true,
            order: GroupedListOrder.DESC,
            useStickyGroupSeparators: true,
            floatingHeader: true,
            padding: EdgeInsets.all(8),
            elements: messages,
            groupBy: (message) => DateTime(
                message.date.year, message.date.month, message.date.day),
            groupHeaderBuilder: (Message message) => SizedBox(),
            itemBuilder: (context, Message message) => Align(
                alignment: message.isSentByMe
                    ? Alignment.centerRight
                    : Alignment.centerLeft,
                child: message.isSentByMe
                    ? IntrinsicWidth(
                        child: Container(
                          margin: const EdgeInsets.symmetric(
                              vertical: 4, horizontal: 12),
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 48, 51, 54),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  message.text,
                                  style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    : IntrinsicWidth(
                        child: Container(
                          margin: const EdgeInsets.symmetric(
                              vertical: 4, horizontal: 12),
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(81, 81, 81, 1),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  message.text,
                                  style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                const SizedBox(height: 8),
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      "regenerate",
                                      style: GoogleFonts.poppins(
                                        color: const Color.fromARGB(131, 255, 255, 255),
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    const SizedBox(width: 8),
                                    Text(
                                      "copy",
                                      style: GoogleFonts.poppins(
                                        color: const Color.fromARGB(131, 255, 255, 255),
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      )),
          )),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 15),
              decoration: BoxDecoration(
                color: Colors.grey[900],
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextField(
                    controller: chatController,
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
                            icon: const Icon(Icons.mic, color: Colors.white70),
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: const Icon(Icons.camera_alt_outlined,
                                color: Colors.white70),
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: const Icon(Icons.link, color: Colors.white70),
                            onPressed: () {},
                          ),
                          SvgPicture.asset('assets/images/styleme.svg'),
                        ],
                      ),
                      IconButton(
                        icon: const Icon(Icons.send, color: Colors.white70),
                        onPressed: () {
                          final messageFromUser = Message(
                            text: chatController.text,
                            date: DateTime.now(),
                            isSentByMe: true,
                          );

                          setState(() {
                            messages.add(messageFromUser);
                          });
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}
