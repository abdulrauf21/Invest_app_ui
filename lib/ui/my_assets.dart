

import 'package:flutter/material.dart';
import 'package:investapp_ui/ui/app_constants_myassets_page.dart';

class MyAssetsScreen extends StatelessWidget {
  const MyAssetsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List historyList = [
      {
        "title": "¥ 200.000",
        "text1": "Buy “APPL” Stock",
        "text2": " 22 Jun 2020"
      },
      {
        "title": "¥ 150.000",
        "text1": "Sell “TLKM” Stock",
        "text2": " 22 Jun 2020"
      },
      {"title": "¥ 1,000", "text1": "Buy “FB” Stock", "text2": "22 Jun 2020"},
    ];
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SafeArea(
              child: Icon(Icons.arrow_back),
            ),
            const SizedBox(
              height: 32,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 40,
              ),
              child: Text(
                "My Asset",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 24,
                ),
              ),
            ),
            const SizedBox(
              height: 33,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 37, right: 34),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        "Your Total Asset Portfolio",
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        "¥ 25,055",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 32,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Image.asset("assets/images/Framegreen_arrow.png"),
                      Text("+2%"),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 62,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 37, right: 34),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Current Plans",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                  Text("View All"),
                ],
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              height: 212,
              padding: EdgeInsets.only(left: 37),
              width: double.infinity,
              child: ListView.separated(
                  // padding: const EdgeInsets.only(left: 18),
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  separatorBuilder: (context, index) {
                    return const SizedBox(
                      width: 10,
                    );
                  },
                  itemBuilder: (context, index) {
                    return Container(
                      padding: EdgeInsets.symmetric(horizontal: 22),
                      height: 208,
                      width: 340,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color(0xffFFE080),
                            Color(0xffCB5F00),
                          ],
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                cardsMyAssets[index]["title"],
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18,
                                ),
                              ),
                              Text(
                                cardsMyAssets[index]["description"],
                              ),
                            ],
                          ),
                          Image.asset(
                            cardsMyAssets[index]["image"]!,
                            height: 212,
                            width: 224,
                          ),
                        ],
                      ),
                    );
                  }),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 36),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "History",
                    style: TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Image.asset("assets/images/Frame.png"),
                ],
              ),
            ),
            SizedBox(
              height: 17,
            ),
            ListView.separated(
              separatorBuilder: (context, index) {
                return SizedBox(height: 10);
              },
              shrinkWrap: true,
              itemCount: historyList.length,
              itemBuilder: (context, index) {
                return Container(
                  
      
                  margin: EdgeInsets.symmetric(horizontal: 18),
                  padding: EdgeInsets.only(
                    left: 19,
                    right: 16,
                    top: 16,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        historyList[index]["title"],
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                        ),
                      ),
                      SizedBox(
                        height: 9,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(historyList[index]["text1"]),
                          Text(historyList[index]["text2"]),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
