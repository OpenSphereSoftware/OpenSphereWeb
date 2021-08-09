import 'package:flutter/material.dart';
import 'package:opensphereweb/views/core_widgets/navigation_bar/navbar_talbet_desktop.dart';
import 'package:opensphereweb/views/core_widgets/navigation_drawer/navigation_drawer.dart';
import 'package:opensphereweb/views/home/home_content_desktop.dart';
import 'package:opensphereweb/views/home/home_content_mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  late ScrollController _scrollController;
  double _scrollPosition = 0;
  double _opacity = 0;

  _scrollListener() {
    setState(() {
      _scrollPosition = _scrollController.position.pixels;
    });
  }

  @override
  void initState() {
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollListener);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    _opacity = _scrollPosition < screenSize.height * 0.40
        ? _scrollPosition / (screenSize.height * 0.40)
        : 1;
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      return Scaffold(
        extendBodyBehindAppBar: true,
        drawer: sizingInformation.isMobile ? NavigationDrawer() : null,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        appBar: sizingInformation.isMobile
            ? AppBar(
                backgroundColor:
                    Theme.of(context).primaryColor.withOpacity(_opacity),
                elevation: 0,
                centerTitle: true,
                title: Text(
                  'OPENSPHERE',
                  style: TextStyle(
                    color: Colors.blueGrey[100],
                    fontSize: 20,
                    fontFamily: 'Open Sans',
                    fontWeight: FontWeight.w400,
                    letterSpacing: 3,
                  ),
                ),
              )
            : PreferredSize(
                preferredSize: Size(screenSize.width, 1000),
                child: NavBarTabletDesktop(_opacity),
              ),
        body: SingleChildScrollView(
          controller: _scrollController,
          physics: ClampingScrollPhysics(),
          child: ScreenTypeLayout(
            mobile: const HomeContentMobile(),
            desktop: const HomeContentDesktop(),
            tablet: const HomeContentMobile(),
          ),
        ),
      );
    });
  }
}
