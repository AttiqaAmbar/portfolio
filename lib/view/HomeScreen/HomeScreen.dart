import 'package:flutter/material.dart/';
import 'package:portfolio/component/component_lyout/responsivelyout.dart';
import 'package:portfolio/view/Home_desktop/homeDesktop.dart';
import 'package:portfolio/views/home_screen/home_responsive_screens/mobile-home.dart';

class HomeView extends StatefulWidget{
  const HomeView ({super.key});

  @override
  State<HomeView> createState()=>_HomeVieState();

}
class _HomeVieState extends State<HomeView>{
  @override
  Widget build(BuildContext context)
  {
    return ResponsiveLayotWidget(
      //Screen for desktop
        desktop: HomeDesktop(),
        //Screen for mobile
        mobile: HomeMobile(),
        //Screen for tablet
        tablet: HomeMobile());
  }
}