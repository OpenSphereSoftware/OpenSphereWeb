import 'package:flutter/material.dart';
import 'package:opensphereweb/views/core_widgets/bottom_bar/bottom_bar.dart';
import 'package:opensphereweb/views/core_widgets/navigation_bar/navbar_talbet_desktop.dart';
import 'package:opensphereweb/views/core_widgets/navigation_bar/navigation_bar_mobile.dart';
import 'package:opensphereweb/views/core_widgets/navigation_drawer/navigation_drawer.dart';
import 'package:opensphereweb/views/home/widgets/dienstleistungen/dienstleistungen.dart';
import 'package:opensphereweb/views/home/widgets/opensphere_vorstellung/opensphere_vorstellung.dart';
import 'package:opensphereweb/views/home/widgets/theme_chooser/theme_chooser.dart';
import 'package:opensphereweb/views/home/widgets/ueber_mich/ueber_mich.dart';
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

  void _scrollListener() {
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
  void dispose() {
    _scrollController.dispose(); // dispose the controller
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    _opacity = _scrollPosition < screenSize.height * 0.40
        ? _scrollPosition / (screenSize.height * 0.40)
        : 1;
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      return Scaffold(
        extendBodyBehindAppBar: true,
        drawer: sizingInformation.isMobile ? NavigationDrawer(screenScrollController: _scrollController,) : null,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        appBar: sizingInformation.isMobile
            ? PreferredSize(
                preferredSize: Size(screenSize.width, 60),
                child: NavigaitonBarMobile(opacity: _opacity))
            : PreferredSize(
                preferredSize: Size(screenSize.width, 1000),
                // todo implement in bloc/prvider state management  not pass scroll controller around
                child: NavBarTabletDesktop(opacity: _opacity, screenScrollController: _scrollController,),
              ),
        body: SingleChildScrollView(
          controller: _scrollController,
          physics: const ClampingScrollPhysics(),
          child: Column(
            children: [
              const OpenSphereVorstellung(),
              SizedBox(
                height: sizingInformation.isDesktop ? 150 : 80,
              ),
              const ThemeChooser(),
              SizedBox(
                height: sizingInformation.isDesktop ? 200 : 200,
              ),
              Dienstleistungen(screenScrollController: _scrollController,),
              SizedBox(
                height: sizingInformation.isDesktop ? 200 : 150,
              ),
              const UeberMich(),
              SizedBox(
                height: sizingInformation.isDesktop ? 250 : 150,
              ),
              const BottomBar()
            ],
          ),
        ),
      );
    });
  }
}
