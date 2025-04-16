import 'package:flutter/material.dart';
import 'package:mdmfit/const/colors.dart';

class CustomTabBarView3 extends StatelessWidget {
  final String? title;
  final String tab1Title;
  final String tab2Title;
  final String tab3Title;
  final Widget tab1Content;
  final Widget tab2Content;
  final Widget tab3Content;

  const CustomTabBarView3({
    Key? key,
    this.title,
    required this.tab1Title,
    required this.tab2Title,
    required this.tab3Title,
    required this.tab1Content,
    required this.tab2Content,
    required this.tab3Content,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: Column(
          children: [
            if (title != null)
              Padding(
                padding: const EdgeInsets.only(top: 40.0, bottom: 8),
                child: Text(
                  title!,
                  style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.white,
                    width: 0,
                  ),
                ),
              ),
              child: TabBar(
                tabs: [
                  Tab(text: tab1Title),
                  Tab(text: tab2Title),
                  Tab(text: tab3Title),
                ],
                indicator: BoxDecoration(
                  color: Color(0xff9DCEFF),
                  borderRadius: BorderRadius.circular(8),
                ),
                indicatorSize: TabBarIndicatorSize.tab, // or label if you prefer
                indicatorPadding: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 4.0),
                labelColor: Colors.black,
                unselectedLabelColor: Color(0xffa9aaad),
                labelStyle: const TextStyle(fontWeight: FontWeight.bold),
                unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
                labelPadding: const EdgeInsets.symmetric(horizontal: 12.0),
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  tab1Content,
                  tab2Content,
                  tab3Content,
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
