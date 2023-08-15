import 'package:flutter/material.dart';

class ProfElectivePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List of Proffesional Elective'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Text('Official Syllabus from Makaut'),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 1, // Display 12 images
              itemBuilder: (BuildContext context, int index) {
                if (index == 0) {
                  return Image.asset(
                    'asset/pe.png',
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
