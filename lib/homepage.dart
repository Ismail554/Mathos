import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mathos/login.dart';

import 'Custome_container.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => LoginPage()),
          );
        },
       
        child: const Icon(Icons.add), // Example child
      ),
      backgroundColor: Color(0xFFF3F4F6),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                SizedBox(height: 50),
                Container(
                  color: Color(0xFFFFFFFF),
                  width: double.infinity,
                  height: 54,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(width: 12),
                      Image.asset('assets/images/logo.jpg'),

                      Spacer(),

                      SvgPicture.asset(
                        'assets/icon/ai_msg.svg',
                        height: 24,
                        width: 96,
                      ),
                      SizedBox(width: 10),
                      SvgPicture.asset(
                        'assets/icon/search.svg',
                        height: 24,
                        width: 96,
                      ),
                      SizedBox(width: 10),
                      SvgPicture.asset(
                        'assets/icon/bell.svg',
                        height: 24,
                        width: 96,
                      ),
                      SizedBox(width: 12),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: EdgeInsets.only(right: 180.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //title text
                      Text(
                        'Math Feed',
                        style: GoogleFonts.inter(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      Text(
                        'Help others and earn points!',
                        style: GoogleFonts.inter(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),

                //data container
                ///card 01
                ///
                CustomContainer(
                  name: 'Sarah Ahmed',
                  grade: 'Grade 10',
                  time: '2 hours ago',
                  details:
                      'Can someone help me solve this quadratic equation: x² + 5x + 6 = 0? I understand the formula but get confused with the signs.',
                  profileImage: 'assets/images/123.jpeg',
                  docImage: 'assets/images/image1.png',
                ),
                SizedBox(height: 20),

                /// card 02
                CustomContainer(
                  name: 'Rakib Hassan',
                  grade: 'Grade 4',
                  time: '4 hours ago',
                  details:
                      'I need help with trigonometry! How do I remember the relationships between sin, cos, and tan? Any easy tricks?',
                  profileImage: 'assets/images/hello.png',
                ),
                SizedBox(height: 20),
                CustomContainer(
                  name: 'Rakib Hassan',
                  grade: 'Grade 4',
                  time: '4 hours ago',
                  details:
                      'I need help with trigonometry! How do I remember the relationships between sin, cos, and tan? Any easy tricks?',
                  profileImage: 'assets/images/hello.png',
                ),
                SizedBox(height: 20),
                CustomContainer(
                  name: 'Rakib Hassan',
                  grade: 'Grade 4',
                  time: '4 hours ago',
                  details:
                      'I need help with trigonometry! How do I remember the relationships between sin, cos, and tan? Any easy tricks?',
                  profileImage: 'assets/images/hello.png',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
