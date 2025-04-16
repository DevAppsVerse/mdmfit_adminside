import 'package:flutter/material.dart';
import 'package:mdmfit/const/colors.dart';

class CustomTabBarView2 extends StatefulWidget {
  final String? title;
  final String tab1Title;
  final String tab2Title;
  final Widget tab1Content;
  final Widget tab2Content;

  const CustomTabBarView2({
    Key? key,
    this.title,
    required this.tab1Title,
    required this.tab2Title,
    required this.tab1Content,
    required this.tab2Content,
  }) : super(key: key);

  @override
  _CustomTabBarViewState createState() => _CustomTabBarViewState();
}

class _CustomTabBarViewState extends State<CustomTabBarView2>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        // backgroundColor: TColor.primaryColor1,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_left_sharp,
            color: Colors.black,
            size: 42,
          ),
        ),
        centerTitle: true,

        title: widget.title == null ? null :
        Text(widget.title!,
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
        ),
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(text: widget.tab1Title),
            Tab(text: widget.tab2Title),
          ],
          indicator: BoxDecoration(
            color: TColor.primaryColor1,
            borderRadius: BorderRadius.circular(8),
          ),
          dividerColor: Colors.white,

          indicatorSize: TabBarIndicatorSize.tab, // or .label depending on need
          indicatorPadding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4),
          labelColor: Colors.white,
          unselectedLabelColor: Colors.black,
          labelStyle: const TextStyle(fontWeight: FontWeight.bold),
          unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
        ),
        toolbarHeight: widget.title == null
            ? kToolbarHeight
            : null,

      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          widget.tab1Content,
          widget.tab2Content,
        ],
      ),
    );
  }
}
