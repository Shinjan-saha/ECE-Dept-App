import 'package:flutter/material.dart';

class Semester4Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('4th Semester Syllabus'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Text('Official Syllabus from Makaut'),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 16, // Display 12 images
              itemBuilder: (BuildContext context, int index) {
                if (index == 0) {
                  return Image.asset(
                    'asset/4thsem.png',
                    // height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  );
                } else if (index == 1) {
                  return Image.asset(
                    'asset/4thsem1.png',
                    // height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  );
                }
                else if (index == 2) {
                  return Image.asset(
                    'asset/4thsem2.png',
                    // height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  );
                }
                else if (index == 3) {
                  return Image.asset(
                    'asset/4thsem3.png',
                    // height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  );
                }
                else if (index == 4) {
                  return Image.asset(
                    'asset/4thsem4.png',
                    // height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  );
                }
                else if (index == 5) {
                  return Image.asset(
                    'asset/4thsem5.png',
                    // height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  );
                }
                else if (index == 6) {
                  return Image.asset(
                    'asset/4thsem6.png',
                    // height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  );
                }
                else if (index == 7) {
                  return Image.asset(
                    'asset/4thsem7.png',
                    // height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  );
                }
                else if (index == 8) {
                  return Image.asset(
                    'asset/4thsem8.png',
                    // height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  );
                }
                else if (index == 9) {
                  return Image.asset(
                    'asset/4thsem10.png',
                    // height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  );
                }
                else if (index == 10) {
                  return Image.asset(
                    'asset/4thsem11.png',
                    // height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  );
                }
                else if (index == 11) {
                  return Image.asset(
                    'asset/4thsem12.png',
                    // height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  );
                }
                 else if (index == 12) {
                  return Image.asset(
                    'asset/4thsem13.png',
                    // height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  );
                }
                 else if (index == 13) {
                  return Image.asset(
                    'asset/4thsem14.png',
                    // height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  );
                }
                 else if (index == 14) {
                  return Image.asset(
                    'asset/4thsem15.png',
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
