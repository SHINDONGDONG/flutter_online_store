import 'package:flutter/material.dart';
import 'package:flutter_online_store/components/badge_item.dart';
import 'package:flutter_online_store/components/text_item.dart';
import 'package:flutter_online_store/screens/chat_screen.dart';
import 'package:flutter_online_store/screens/product_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.menu),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.more_horiz),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                    color: Colors.blue[800],
                    borderRadius: BorderRadius.circular(13),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    "Asus",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                BadgeItem(
                  badgeText: 'Top Seller',
                  badgeIcon: Icons.local_fire_department_outlined,
                  badgeColor: Colors.orange.shade100,
                  badgeFontColor: Colors.orange.shade900,
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  "Asus Official Store",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.blue[90],
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 5,
                ),
                SizedBox(
                  height: 60,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      BadgeItem(
                        badgeText: 'Alerts',
                        badgeIcon: Icons.notifications_on_outlined,
                        badgeColor: Colors.blue.shade900,
                        badgeFontColor: Colors.white,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ChatScreen()));
                        },
                        child: BadgeItem(
                          badgeText: 'Chat',
                          badgeIcon: Icons.message_rounded,
                          badgeColor: Colors.blue.shade100,
                          badgeFontColor: Colors.blue.shade900,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 25),
                  padding: EdgeInsets.symmetric(vertical: 13),
                  height: 70,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextItem(itemTitle: "Products", isChecked: true),
                      TextItem(itemTitle: "Newest", isChecked: false),
                      TextItem(itemTitle: "Popular", isChecked: false),
                      TextItem(itemTitle: "Category", isChecked: false),
                    ],
                  ),
                ),
                Expanded(
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1 / 1.5,
                      crossAxisSpacing: 3,
                      mainAxisSpacing: 3,
                    ),
                    itemCount: 14,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ProductScreen(),
                            ),
                          );
                        },
                        child: Container(
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            borderRadius: BorderRadius.circular(13),
                          ),
                          padding: EdgeInsets.all(5),
                          child: Column(
                            children: [
                              Expanded(
                                child: Image.asset("images/asus_laptop.png"),
                              ),
                              Container(
                                height: 105,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(13),
                                ),
                                padding: EdgeInsets.all(8),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "ProArt StudioBook",
                                      style: TextStyle(
                                          color: Colors.blue[90],
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(height: 5,),
                                    Text("Asus"),
                                    Spacer(),
                                    SizedBox(
                                      height: 50,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Asus"),
                                          Container(
                                            width: 30,
                                            height: 30,
                                            decoration: BoxDecoration(
                                              color: Colors.blue.shade50,
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            alignment: Alignment.center,
                                            child: Icon(
                                              Icons.arrow_forward_ios_outlined,
                                              size: 16,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
