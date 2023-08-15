import 'package:flutter/material.dart';

class Semester5Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('5th Semester Syllabus'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Text('Official Syllabus from Makaut'),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 24, // Display 12 images
              itemBuilder: (BuildContext context, int index) {
                if (index == 0) {
                  return Image.asset(
                    'asset/5thsem.png',
                    // height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  );
                } else if (index == 1) {
                  return Image.asset(
                    'asset/5thsem1.png',
                    // height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  );
                }
                else if (index == 2) {
                  return Image.asset(
                    'asset/5thsem2.png',
                    // height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  );
                }
                else if (index == 3) {
                  return Image.asset(
                    'asset/5thsem3.png',
                    // height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  );
                }
                else if (index == 4) {
                  return Image.asset(
                    'asset/5thsem4.png',
                    // height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  );
                }
                else if (index == 5) {
                  return Image.asset(
                    'asset/5thsem5.png',
                    // height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  );
                }
                else if (index == 6) {
                  return Image.asset(
                    'asset/5thsem6.png',
                    // height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  );
                }
                else if (index == 7) {
                  return Image.asset(
                    'asset/5thsem7.png',
                    // height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  );
                }
                else if (index == 8) {
                  return Image.asset(
                    'asset/5thsem8.png',
                    // height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  );
                }
                else if (index == 9) {
                  return Image.asset(
                    'asset/5thsem10.png',
                    // height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  );
                }
                else if (index == 10) {
                  return Image.asset(
                    'asset/5thsem11.png',
                    // height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  );
                }
                else if (index == 11) {
                  return Image.asset(
                    'asset/5thsem12.png',
                    // height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  );
                }
                 else if (index == 12) {
                  return Image.asset(
                    'asset/5thsem13.png',
                    // height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  );
                }
                 else if (index == 13) {
                  return Image.asset(
                    'asset/5thsem14.png',
                    // height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  );
                }
                 else if (index == 14) {
                  return Image.asset(
                    'asset/5thsem15.png',
                    // height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  );
                }
                 else if (index == 15) {
                  return Image.asset(
                    'asset/5thsem16.png',
                    // height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  );
                }
                 else if (index == 16) {
                  return Image.asset(
                    'asset/5thsem17.png',
                    // height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  );
                }
                 else if (index == 17) {
                  return Image.asset(
                    'asset/5thsem18.png',
                    // height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  );
                }
                 else if (index == 18) {
                  return Image.asset(
                    'asset/5thsem19.png',
                    // height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  );
                }
                 else if (index == 19) {
                  return Image.asset(
                    'asset/5thsem20.png',
                    // height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  );
                }
                 else if (index == 20) {
                  return Image.asset(
                    'asset/5thsem21.png',
                    // height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  );
                }
                 else if (index == 21) {
                  return Image.asset(
                    'asset/5thsem22.png',
                    // height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  );
                }
                 else if (index == 22) {
                  return Image.asset(
                    'asset/5thsem23.png',
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
