import 'package:flutter/material.dart';

class Semester6Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('6th Semester Syllabus'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Text('Official Syllabus from Makaut'),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 22, // Display 12 images
              itemBuilder: (BuildContext context, int index) {
                if (index == 0) {
                  return Image.asset(
                    'asset/6thsem.png',
                    // height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  );
                } else if (index == 1) {
                  return Image.asset(
                    'asset/6thsem1.png',
                    // height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  );
                }
                else if (index == 2) {
                  return Image.asset(
                    'asset/6thsem2.png',
                    // height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  );
                }
                else if (index == 3) {
                  return Image.asset(
                    'asset/6thsem3.png',
                    // height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  );
                }
                else if (index == 4) {
                  return Image.asset(
                    'asset/6thsem4.png',
                    // height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  );
                }
                else if (index == 5) {
                  return Image.asset(
                    'asset/6thsem5.png',
                    // height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  );
                }
                else if (index == 6) {
                  return Image.asset(
                    'asset/6thsem6.png',
                    // height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  );
                }
                else if (index == 7) {
                  return Image.asset(
                    'asset/6thsem7.png',
                    // height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  );
                }
                else if (index == 8) {
                  return Image.asset(
                    'asset/6thsem8.png',
                    // height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  );
                }
                else if (index == 9) {
                  return Image.asset(
                    'asset/6thsem10.png',
                    // height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  );
                }
                else if (index == 10) {
                  return Image.asset(
                    'asset/6thsem11.png',
                    // height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  );
                }
                else if (index == 11) {
                  return Image.asset(
                    'asset/6thsem12.png',
                    // height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  );
                }
                 else if (index == 12) {
                  return Image.asset(
                    'asset/6thsem13.png',
                    // height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  );
                }
                 else if (index == 13) {
                  return Image.asset(
                    'asset/6thsem14.png',
                    // height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  );
                }
                 else if (index == 14) {
                  return Image.asset(
                    'asset/6thsem15.png',
                    // height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  );
                }
                 else if (index == 15) {
                  return Image.asset(
                    'asset/6thsem16.png',
                    // height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  );
                }
                 else if (index == 16) {
                  return Image.asset(
                    'asset/6thsem17.png',
                    // height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  );
                }
                 else if (index == 17) {
                  return Image.asset(
                    'asset/6thsem18.png',
                    // height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  );
                }
                 else if (index == 18) {
                  return Image.asset(
                    'asset/6thsem19.png',
                    // height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  );
                }
                 else if (index == 19) {
                  return Image.asset(
                    'asset/6thsem20.png',
                    // height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  );
                }
                 else if (index == 20) {
                  return Image.asset(
                    'asset/6thsem21.png',
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
