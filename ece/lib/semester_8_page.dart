import 'package:flutter/material.dart';

class Semester8Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('8th Semester Syllabus'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Text('Official Syllabus from Makaut'),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 18, // Display 18 images
              itemBuilder: (BuildContext context, int index) {
                if (index == 0) {
                  return Image.asset(
                    'asset/8thsem.png',
                    // height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  );
                } else if (index == 1) {
                  return Image.asset(
                    'asset/8thsem1.png',
                    // height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  );
                }
                else if (index == 2) {
                  return Image.asset(
                    'asset/8thsem2.png',
                    // height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  );
                }
                else if (index == 3) {
                  return Image.asset(
                    'asset/8thsem3.png',
                    // height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  );
                }
                else if (index == 4) {
                  return Image.asset(
                    'asset/8thsem4.png',
                    // height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  );
                }
                else if (index == 5) {
                  return Image.asset(
                    'asset/8thsem5.png',
                    // height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  );
                }
                else if (index == 6) {
                  return Image.asset(
                    'asset/8thsem6.png',
                    // height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  );
                }
                else if (index == 7) {
                  return Image.asset(
                    'asset/8thsem7.png',
                    // height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  );
                }
                else if (index == 8) {
                  return Image.asset(
                    'asset/8thsem8.png',
                    // height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  );
                }
                else if (index == 9) {
                  return Image.asset(
                    'asset/8thsem9.png',
                    // height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  );
                }
                else if (index == 10) {
                  return Image.asset(
                    'asset/8thsem10.png',
                    // height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  );
                }
                else if (index == 11) {
                  return Image.asset(
                    'asset/8thsem11.png',
                    // height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  );
                }
                 else if (index == 12) {
                  return Image.asset(
                    'asset/8thsem111.png',
                    // height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  );
                }
                 else if (index == 13) {
                  return Image.asset(
                    'asset/8thsem12.png',
                    // height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  );
                }
                 else if (index == 14) {
                  return Image.asset(
                    'asset/8thsem13.png',
                    // height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  );
                }
                 else if (index == 15) {
                  return Image.asset(
                    'asset/8thsem14.png',
                    // height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  );
                }
                else if (index == 16) {
                  return Image.asset(
                    'asset/8thsem15.png',
                    // height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  );
                }
                else if (index == 17) {
                  return Image.asset(
                    'asset/8thsem16.png',
                    // height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  );
                }
                
                 
                
                
                return Container(); // Placeholder for other indices
              },
            ),
          ],
        ),
      ),
    );
  }
}
