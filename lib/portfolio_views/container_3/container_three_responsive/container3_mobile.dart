import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/Controller/constants/color.dart';

class ContainerthreeMobile extends StatefulWidget {
  const ContainerthreeMobile({super.key});

  @override
  State<ContainerthreeMobile> createState() => _ContainerthreeMobileState();
}

class _ContainerthreeMobileState extends State<ContainerthreeMobile> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      width: width,
      color: AppColor.darkbgColor,
      child: Column(
        children: [
          SizedBox(height: 20),
          Text(
            'My Projects',
            style: GoogleFonts.inconsolata(
                color: Colors.white, fontSize: 42, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          // Displaying project details in rows with columns
          ProjectWidget(
              projectName: 'Project One FaceBook',
              projectDetails:
              'FaceBook clone  made with flutter for mobile app development skills excepting features and functonalities.  .'),
          ProjectWidget(
              projectName: 'Project Two Calculator',
              projectDetails:
              'Perform basic arithmetic operations with ease.THIS SIMPLE CALCULATOR simple calculator app allows you to quickly calculate sums,differences,products and quotients.'),
          ProjectWidget(
              projectName: 'Project Three GoldApp',
              projectDetails:
              'Gold Vault is your one-stop-shop for all things gold.Buy,sell,and track the value of gold with ease.'),
          SizedBox(height: 10),
          ProjectWidget(
              projectName: 'Project Four Currency converter ',
              projectDetails:
              'Easily convert currencies on-the-go.This currency converter exchange rates for over currencies worldwide.'),
          ProjectWidget(
              projectName: 'Project  Five Portfolio ',
              projectDetails:
              'A portfolio website designed using Flutter Web to showcase my skills, projects, and expertise in mobile development.'),
        ],
      ),
    );
  }
}

class ProjectWidget extends StatelessWidget {
  final String projectName;
  final String projectDetails;

  ProjectWidget({super.key, required this.projectName, required this.projectDetails});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Container(
    //  width: width * 0.25,
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(500),
                  border: Border.all(color: AppColor.greenPrimaryColor, width: 7)),
              child: Center(
                child: Icon(
                  Icons.developer_mode, // Icon representing the project
                  color: AppColor.greenPrimaryColor,
                  size: 50,
                ),
              ),
            ),
            SizedBox(height: 5),
            Text(
              projectName,
              style: GoogleFonts.inconsolata(
                  color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5),
            Text(
              projectDetails,
              style: GoogleFonts.inconsolata(
                  color: Color(0xff767676), fontSize: 16, fontWeight: FontWeight.w300),
            ),
          ],
        ),
      ),
    );
  }
}
