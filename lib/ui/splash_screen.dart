import 'package:flutter/material.dart';
import 'package:investapp_ui/ui/homepage.dart';
import 'package:investapp_ui/ui/search_page.dart';
import 'package:investapp_ui/ui/wallet_page.dart';
import 'package:investapp_ui/ui/user_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  int currentPage = 0;
  late List pages;

  @override
  void initState() {
    super.initState();
    pages = [
      HomePage(),
      SearchPage(),
      WalletPage(),
      UserPage(),

    ];
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        // selectedItemColor: Colors.black,
        // unselectedItemColor: Colors.grey,
        onTap: (index) {
          setState(() {
          currentPage = index;
                      
                    });
        },
        items: [
          BottomNavigationBarItem(
            icon: Image.asset("assets/images/home.png", color: currentPage == 0? Colors.black: Colors.grey,),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/images/search.png", color: currentPage == 1? Colors.black: Colors.grey,),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/images/usd_icon.png", color: currentPage == 2? Colors.black: Colors.grey,),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/images/user_icon.png", color: currentPage == 3? Colors.black: Colors.grey,),
            label: "",
          ),
        ],
      ),
      body: pages[currentPage],
     
    );
  }
}
