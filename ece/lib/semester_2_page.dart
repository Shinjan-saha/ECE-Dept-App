import 'package:flutter/material.dart';

class Semester2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('2nd Semester Syllabus'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Text('Official Syllabus from Makaut'),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 14, // Display 12 images
              itemBuilder: (BuildContext context, int index) {
                if (index == 0) {
                  return Image.asset(
                    'asset/2ndsem.png',
                    // height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  );
                } else if (index == 1) {
                  return Image.asset(
                    'asset/2ndsem1.png',
                    // height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  );
                }
                else if (index == 2) {
                  return Image.asset(
                    'asset/2ndsem2.png',
                    // height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  );
                }
                else if (index == 3) {
                  return Image.asset(
                    'asset/2ndsem3.png',
                    // height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  );
                }
                else if (index == 4) {
                  return Image.asset(
                    'asset/2ndsem4.png',
                    // height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  );
                }
                else if (index == 5) {
                  return Image.asset(
                    'asset/2ndsem5.png',
                    // height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  );
                }
                else if (index == 6) {
                  return Image.asset(
                    'asset/2ndsem6.png',
                    // height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  );
                }
                else if (index == 7) {
                  return Image.asset(
                    'asset/2ndsem7.png',
                    // height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  );
                }
                else if (index == 8) {
                  return Image.asset(
                    'asset/2ndsem8.png',
                    // height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  );
                }
                else if (index == 9) {
                  return Image.asset(
                    'asset/2ndsem10.png',
                    // height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  );
                }
                else if (index == 10) {
                  return Image.asset(
                    'asset/2ndsem11.png',
                    // height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  );
                }
                else if (index == 11) {
                  return Image.asset(
                    'asset/2ndsem12.png',
                    // height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  );
                }
                 else if (index == 12) {
                  return Image.asset(
                    'asset/2ndsem13.png',
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
