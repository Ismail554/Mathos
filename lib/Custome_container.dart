import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    super.key,
    required this.name,
    required this.grade,
    required this.time,
    required this.details,
    this.like,
    this.unlike,
    this.comment,
    required this.profileImage,
    this.docImage,
  });

  final String name;
  final String grade;
  final String time;
  final String details;
  final String? comment;
  final String? like;
  final String? unlike;
  final String profileImage;
  final String? docImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        minHeight: 201, // Set the minimum height of the container
        maxHeight: 401, // Set the maximum height of the container
      ),
      width: 335,
      decoration: BoxDecoration(
        color: Color(0xFFFFFFFF),
        borderRadius: BorderRadius.circular(16),
        boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.2))],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min, // Column will adjust based on content
        children: [
          Padding(
            padding: EdgeInsets.all(12.0),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 24,
                  backgroundImage: AssetImage(profileImage),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: GoogleFonts.inter(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      Row(
                        children: [
                          Text(
                            grade,
                            style: GoogleFonts.inter(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                            textAlign: TextAlign.left,
                          ),
                          SizedBox(width: 5),
                          Icon(Icons.circle, size: 5),
                          SizedBox(width: 5),
                          Text(
                            time,
                            style: GoogleFonts.inter(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 90.0, bottom: 20),
                  child: SvgPicture.asset('assets/icon/menu.svg'),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 18.0),
            child: SizedBox(
              width: 266,
              child: Text(
                details,
                style: GoogleFonts.inter(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.left,
                maxLines: null, // Allow multiple lines
                overflow: TextOverflow
                    .visible, // Ensure long text doesn't get cut off
              ),
            ),
          ),
          // Only display the docImage if it's not null
          if (docImage != null)
            Padding(
              padding: EdgeInsets.all(18.0),
              child: Image.asset(docImage!),
            ),
          Padding(
            padding: EdgeInsets.only(left: 18.0, right: 18.0),
            child: SvgPicture.asset('assets/icon/line.svg'),
          ),
          // Wrap the last row with Expanded to avoid overflow
          Padding(
            padding: EdgeInsets.only(left: 18.0, right: 18.0, top: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // Space out the elements evenly
              children: [
                Container(
                  height: 28,
                  decoration: BoxDecoration(
                    color: Color(0xFFEFF6FF),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  width: 148,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset('assets/icon/like.svg'),
                      SizedBox(width: 5),
                      Text(
                        'Upvote',
                        style: GoogleFonts.inter(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      SizedBox(width: 5),
                      Icon(Icons.circle, size: 5),
                      SizedBox(width: 5),
                      // Ensure like and unlike are non-null, if not use fallback text
                      Text(
                        like ?? '0', // Fallback to '0' if like is null
                        style: GoogleFonts.inter(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      SizedBox(width: 5),
                      SvgPicture.asset('assets/icon/dislike.svg'),
                    ],
                  ),
                ),
                SizedBox(width: 10),
                SvgPicture.asset('assets/icon/comment.svg'),

                // Ensure comment is non-null, if not use fallback text
                Text(
                  comment ?? '0', // Fallback to '0' if comment is null
                  style: GoogleFonts.inter(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(width: 80),
                SvgPicture.asset('assets/icon/share.svg'),
              ],
            ),
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
