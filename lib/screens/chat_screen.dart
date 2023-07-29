import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_online_store/components/chat_message_item.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 90,
              padding: const EdgeInsets.all(8),
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const BackButton(),
                  const SizedBox(
                    width: 15,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.blue[900],
                    radius: 30,
                    child: const Text(
                      "Asus",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Asus Offical Store",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 19,
                        ),
                      ),
                      Text(
                        "Active 5 hours ago",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.grey.shade500),
                      ),
                    ],
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.more_horiz),
                    tooltip: "More Options",
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.grey.shade200,
                child: ListView(
                  padding: const EdgeInsets.all(15),
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  children: [
                    Container(
                      height: 80,
                      padding: const EdgeInsets.all(9),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        children: [
                          Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Image.asset(
                              "images/asus_laptop.png",
                              height: 50,
                              width: 50,
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Proart Studiobook 17",
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 17,
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                "Type: Pro 17 w700",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.grey.shade500,
                                ),
                              )
                            ],
                          ),
                          const Spacer(),
                          Text(
                            "\$2500",
                            style: TextStyle(
                                color: Colors.blue.shade900,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    ChatMessageItem(
                        isMeChatting: true,
                        messageBody:
                        "Hi Dear, is this laptop still have a stock? I wanna buy 100 pcs"),
                    ChatMessageItem(
                        isMeChatting: false,
                        messageBody:
                        "Yes, it's still have stock"),
                    ChatMessageItem(
                        isMeChatting: true,
                        messageBody:
                        "World Champ"),
                    ChatMessageItem(
                        isMeChatting: false,
                        messageBody:
                        "Yes You World Champ"),
                    ChatMessageItem(
                        isMeChatting: true,
                        messageBody:
                        "Do you like Packing?"),
                    ChatMessageItem(
                        isMeChatting: true,
                        messageBody:
                        "Oh My Girl"),                    ChatMessageItem(
                        isMeChatting: true,
                        messageBody:
                        "Hi Dear, is this laptop still have a stock? I wanna buy 100 pcs"),
                    ChatMessageItem(
                        isMeChatting: false,
                        messageBody:
                        "Yes, it's still have stock"),
                    ChatMessageItem(
                        isMeChatting: true,
                        messageBody:
                        "World Champ"),
                    ChatMessageItem(
                        isMeChatting: false,
                        messageBody:
                        "Yes You World Champ"),
                    ChatMessageItem(
                        isMeChatting: true,
                        messageBody:
                        "Do you like Packing?"),
                    ChatMessageItem(
                        isMeChatting: true,
                        messageBody:
                        "Oh My Girl"),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 80,
        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(13),
        ),
        child: Row(
          children: [
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Type something...",
                  hintStyle: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.blue[900],
                  ),
                ),
              ),
            ),
            SizedBox(width: 20,),
            InkWell(
              onTap: (){},
              hoverColor: Colors.white,
              child: Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  color: Colors.blue[900],
                  borderRadius: BorderRadius.circular(13),
                ),
                alignment: Alignment.center,
                child: Icon(
                  Icons.send_rounded,
                  size: 27,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
