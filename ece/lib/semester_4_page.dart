import 'package:flutter/material.dart';

class Semester4Page extends StatefulWidget {
  @override
  _Semester4PageState createState() => _Semester4PageState();
}

class _Semester4PageState extends State<Semester4Page> {
  String _selectedOption = 'Syllabus';

  final Map<String, List<String>> _imageGroups = {
    'Syllabus': ['4thsem.png'],
    'Analog Communication': ['4thsem1.png', '4thsem2.png'],
    'Analog Circuit': ['4thsem3.png'],
    'Microprocessor & Microcontroller': ['4thsem4.png'],
    'Design & Analysis of Algorithm': ['4thsem5.png', '4thsem6.png'],
    'Numerical methods(BS)': ['4thsem7.png'],
    'Biology for Engineers': ['4thsem8.png', '4thsem9.png', '4thsem10.png'],
    'Analog Commuinctation Lab': ['4thsem11.png'],
    'Analog Circuit Lab': ['4thsem12.png'],
    'MicroProccessor & MicroController Lab': ['4thsem13.png'],
    'Numerical Method Lab': ['4thsem14.png'],
    'Soft Skill Development Lab': ['4thsem15.png'],
  };

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
            DropdownButton<String>(
              value: _selectedOption,
              onChanged: (String? newValue) {
                setState(() {
                  _selectedOption = newValue!;
                });
              },
              items: _imageGroups.keys.map<DropdownMenuItem<String>>((String key) {
                return DropdownMenuItem<String>(
                  value: key,
                  child: Text(key),
                );
              }).toList(),
            ),
            SizedBox(height: 20),
            Column(
              children: _imageGroups[_selectedOption]!
                  .map((imageName) => Image.asset(
                        'asset/$imageName',
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ))
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}


