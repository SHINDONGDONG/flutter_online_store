import 'package:flutter/material.dart';
import 'package:flutter_online_store/components/read_more_text.dart';
import 'package:flutter_online_store/components/text_item.dart';
import 'package:flutter_online_store/screens/chat_screen.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: false,
      extendBody: true,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
          child: Stack(
            fit: StackFit.expand,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const BackButton(),
                            TextButton.icon(
                              onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => ChatScreen()));
                                },
                              icon: const Icon(
                                Icons.chat_bubble,
                              ),
                              label: const Text("ask Seller"),
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                  Colors.grey.shade300,
                                ),
                                foregroundColor: MaterialStateProperty.all(
                                  Colors.blue.shade900,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(height: 30,),
                      const Text(
                        "Pro_Art StudioBook",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.w700),
                      ),
                      const SizedBox(height: 10,),
                      Row(
                        children: [
                          const Text(
                            "Type: ",
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          Text(
                            "Pro 17 w700",
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey.shade400),
                          ),
                        ],
                      ),
                      // const SizedBox(height: 25,),
                      AspectRatio(
                        aspectRatio: 1,
                        child: Padding(
                          padding: const EdgeInsets.all(15),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(child: Image.asset("images/asus_laptop.png"),),
                              SizedBox(
                                height: 70,
                                child: ListView.builder(
                                  itemCount: 6,
                                  itemExtent: 100,
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context,index) {
                                    return Container(
                                      margin: const EdgeInsets.all(5),
                                      child: Image.asset("images/asus_laptop.png"),
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 10,),
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        height: 80,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: 70,
                              decoration: BoxDecoration(
                                color: Colors.blue.shade900,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              alignment: Alignment.center,
                              child: const Text(
                                "Asus",
                                style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                            SizedBox(width: 15,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Asus Official Store",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  "View Store",
                                ),
                              ],
                            ),
                            Spacer(),
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Icon(
                                Icons.arrow_forward_ios_outlined,
                                size: 18,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 25,),
                      Container(
                        height: 50,
                        padding: EdgeInsets.all(5),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 40,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  TextItem(itemTitle: "Overview", isChecked: true),
                                  TextItem(itemTitle: "Specifications", isChecked: false),
                                  TextItem(itemTitle: "Review", isChecked: false),
                                  TextItem(itemTitle: "More", isChecked: false),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      ReadMoreTextItem(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 60,
        color: Colors.white,
        padding: EdgeInsets.all(5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Price",style: TextStyle(fontSize: 18),),
                Text("\$2500",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              ],
            ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 50),
                decoration: BoxDecoration(
                  color: Colors.blue[900],
                  borderRadius: BorderRadius.circular(12),
                ),
                alignment: Alignment.center,
                child: Text(
                  "Add to Cart",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
          ],
        ),
      )
    );
  }
}
