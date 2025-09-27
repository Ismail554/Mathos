import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mathos/Ostad/field.dart';
import 'package:mathos/login.dart'; // Assuming this is the correct file for LoginPage
import 'Custome_container.dart'; // Ensure this file is imported

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Function to navigate to another screen
  void navigateToField() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => FlutterInput()),
    );
  }

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
        child: const Icon(Icons.add),
      ),
      backgroundColor: Color(0xFFF3F4F6),
      body: Stack(
        children: [
          // Main body content
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 50.h),
                Container(
                  color: Color(0xFFFFFFFF),
                  width: double.infinity,
                  height: 54.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(width: 12.w),
                      Image.asset('assets/images/logo.jpg'),
                      Spacer(),
                      SvgPicture.asset(
                        'assets/icon/ai_msg.svg',
                        height: 24.h,
                        width: 24.w,
                      ),
                      SizedBox(width: 10.w),
                      SvgPicture.asset(
                        'assets/icon/search.svg',
                        height: 24.h,
                        width: 24.w,
                      ),
                      SizedBox(width: 10.w),
                      SvgPicture.asset(
                        'assets/icon/bell.svg',
                        height: 24.h,
                        width: 24.w,
                      ),
                      SizedBox(width: 12.w),
                    ],
                  ),
                ),
                SizedBox(height: 10.h),
                Padding(
                  padding: EdgeInsets.only(right: 180.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Math Feed',
                        style: GoogleFonts.inter(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      Text(
                        'Help others and earn points!',
                        style: GoogleFonts.inter(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20.h),
                // Data container cards
                CustomContainer(
                  name: 'Sarah Ahmed',
                  grade: 'Grade 10',
                  time: '2 hours ago',
                  details:
                      'Can someone help me solve this quadratic equation: x² + 5x + 6 = 0? I understand the formula but get confused with the signs.',
                  profileImage: 'assets/images/123.jpeg',
                  docImage: 'assets/images/image1.png',
                ),
                SizedBox(height: 20.h),
                CustomContainer(
                  name: 'Rakib Hassan',
                  grade: 'Grade 4',
                  time: '4 hours ago',
                  details:
                      'I need help with trigonometry! How do I remember the relationships between sin, cos, and tan? Any easy tricks?',
                  profileImage: 'assets/images/hello.png',
                ),
                SizedBox(height: 20.h),
                CustomContainer(
                  name: 'Rakib Hassan',
                  grade: 'Grade 4',
                  time: '4 hours ago',
                  details:
                      'I need help with trigonometry! How do I remember the relationships between sin, cos, and tan? Any easy tricks?',
                  profileImage: 'assets/images/hello.png',
                ),
                SizedBox(height: 20.h),
                CustomContainer(
                  name: 'Rakib Hassan',
                  grade: 'Grade 4',
                  time: '4 hours ago',
                  details:
                      'I need help with trigonometry! How do I remember the relationships between sin, cos, and tan? Any easy tricks?',
                  profileImage: 'assets/images/hello.png',
                ),
                SizedBox(height: 20.h),
              ],
            ),
          ),

          // Corrected ElevatedButton with Positioned widget
          Positioned(
            bottom: 36.h, // Adjust bottom position
            left: 16.w,
            right: 16.w,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  Colors.blue,
                ), // Correct way to set background color
              ),
              onPressed: navigateToField,
              child: Text('Go to Field'),
            ),
          ),
        ],
      ),
    );
  }
}
