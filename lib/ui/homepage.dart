import 'package:flutter/material.dart';
import 'package:investapp_ui/ui/app_constant.dart';
import 'package:investapp_ui/ui/my_assets.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List buttons = [
      "liquid funds",
      "assets",
      "mutual",
      "stock market",
    ];
    List downlist = [
      {
        "title": "Investing in Stocks",
        "description":
            "2020 has seen some of the most historic rise in stock market since the Dot com ..."
      },
      {
        "title": "Investing in Forex",
        "description":
            "The \$6.6 trillion market is a great choice to invest. The market has been at an all time..."
      },
    ];
    return Container(
      color: Color.fromARGB(255, 240, 238, 238),
      child: SingleChildScrollView(
        child: Column(children: [
          Container(
            padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
            height: 230,
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0xff295D54), Color(0xff295B54)],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(
                    Icons.menu,
                    color: Colors.white,
                  ),
                  const SizedBox(
                    height: 33,
                  ),
                  const Text(
                    "Hey, Abdul",
                    style: TextStyle(
                      color: Color(0xffe8fffc),
                      fontSize: 24,
                      fontFamily: "Red Hat Display",
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    "Your portfolio",
                    style: TextStyle(
                      color: Color(0x99e8fffc),
                      fontSize: 14,
                      fontFamily: "Red Hat Display",
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "¥ 25,055",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                          fontFamily: "Red Hat Display",
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) {
                                return MyAssetsScreen();
                              },
                            ),
                          );
                        },
                        child: Container(
                          alignment: Alignment.center,
                          height: 36,
                          width: 130,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18),
                              color: Colors.white),
                          child: const Text(
                            "My Assets",
                            style: TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            height: 30,
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Popular Currency",
                  style: TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Text(
                  "View all",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 114, 113, 113),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            height: 227,
            width: double.infinity,
            child: ListView.separated(
                padding: const EdgeInsets.only(left: 18),
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                separatorBuilder: (context, index) {
                  return const SizedBox(
                    width: 20,
                  );
                },
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Row(
                      children: [
                        const Padding(
                          padding: const EdgeInsets.only(left: 20),
                          //
                        ),
                        Image.asset(
                          cards[index]["image"]!,
                          height: 210,
                        ),
                      ],
                    ),
                  );
                }),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 30,
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Learn about Investment",
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
            height: 10,
          ),
          Container(
            height: 30,
            width: double.infinity,
            child: ListView.separated(
                padding: const EdgeInsets.only(left: 10),
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                separatorBuilder: (context, index) {
                  return const SizedBox(
                    width: 15,
                  );
                },
                itemBuilder: (context, index) {
                  return Container(
                    padding: EdgeInsets.only(
                      left: 17,
                      right: 17,
                      top: 6,
                      bottom: 6,
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xffC8E2DF),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Text(buttons[index]),
                  );
                }),
          ),
          ListView.separated(
            separatorBuilder: (context, index) {
              return SizedBox(height: 10);
            },
            shrinkWrap: true,
            itemCount: downlist.length,
            itemBuilder: (context, index) {
              return Container(
                  // height: 123,

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
                        downlist[index]["title"],
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                        ),
                      ),
                      SizedBox(
                        height: 9,
                      ),
                      Text(downlist[index]["description"]),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ));
            },
          )
        ]),
      ),
    );
  }
}
