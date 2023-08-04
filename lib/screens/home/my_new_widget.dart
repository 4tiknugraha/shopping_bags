import 'package:flutter/material.dart';
import 'package:shopping_bags/constants.dart';
import 'package:shopping_bags/screens/home/home_screen.dart';

class NewCollection extends StatefulWidget {
  const NewCollection({Key? key}) : super(key: key);

  @override
  _NewCollectionState createState() => _NewCollectionState();
}

class _NewCollectionState extends State<NewCollection> {
  PageController? _pageController;
  int currentIndex = 0;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  // padding: EdgeInsets.all(120 / 4),
                  // padding: EdgeInsets.symmetric(vertical: kDefaultPadding),
                  padding: EdgeInsets.only(
                      right: kDefaultPadding,
                      left: kDefaultPadding,
                      top: 45,
                      bottom: 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Collection",
                        style: TextStyle(
                            fontSize: 25, color: Colors.grey.shade500),
                      ),
                      Text(
                        "Shoping Bags",
                        style: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.all(kDefaultPadding),
                      child: Row(
                        children: _buildIndicator(),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(kDefaultPadding),
                      child: MaterialButton(
                        height: 50,
                        minWidth: 50,
                        // padding: EdgeInsets.symmetric(horizontal: 10),
                        color: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        onPressed: () {
                          _pageController!.nextPage(
                              duration: Duration(milliseconds: 500),
                              curve: Curves.ease);
                          setState(() {});
                        },

                        child: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.72,
              width: MediaQuery.of(context).size.width,
              child: PageView(
                onPageChanged: (int page) {
                  setState(() {
                    currentIndex = page;
                  });
                },
                controller: _pageController,
                children: <Widget>[
                  Image.asset(
                    'assets/images/1.avif',
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    'assets/images/2.webp',
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    'assets/images/3.webp',
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    'assets/images/4.webp',
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    'assets/images/5.jpeg',
                    fit: BoxFit.cover,
                  ),
                  // Button widget on top of the background
                  Center(
                    child: SizedBox(
                      height: 50,
                      width: 250,
                      child: TextButton(
                        style: TextButton.styleFrom(
                            backgroundColor: Colors.black87),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomeScreen()));
                        },
                        child: Text(
                          "Get Started!".toUpperCase(),
                          style: const TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  _indicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      height: 6,
      width: isActive ? 50 : 10,
      margin: EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
          color: isActive ? Colors.black : Colors.grey.shade500,
          borderRadius: BorderRadius.circular(5)),
    );
  }

  List<Widget> _buildIndicator() {
    List<Widget> indicators = [];
    for (int i = 0; i < 5; i++) {
      if (currentIndex == i) {
        indicators.add(_indicator(true));
      } else {
        indicators.add(_indicator(false));
      }
    }

    return indicators;
  }
}
