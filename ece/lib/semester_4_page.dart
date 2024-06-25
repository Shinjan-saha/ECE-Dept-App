import 'package:flutter/material.dart';

class Semester4Page extends StatefulWidget {
  @override
  _Semester4PageState createState() => _Semester4PageState();
}

class _Semester4PageState extends State<Semester4Page> {
  String _selectedOption = '4th Sem Syllabus';

  final Map<String, List<String>> _imageGroups = {
    '4th Sem Syllabus': ['4thsem.png'],
    'Analog Communication': ['4thsem1.png', '4thsem2.png'],
    'Analog Circuit': ['4thsem3.png'],
    'Microprocessor & Microcontroller': ['4thsem4.png'],
    'Design & Analysis of Algorithm': ['4thsem5.png', '4thsem6.png'],
    'Numerical methods(BS)': ['4thsem7.png'],
    'Biology for Engineers': ['4thsem8.png', '4thsem9.png', '4thsem10.png'],
    'Analog Communication Lab': ['4thsem11.png'],
    'Analog Circuit Lab': ['4thsem12.png'],
    'Microprocessor & Microcontroller Lab': ['4thsem13.png'],
    'Numerical Method Lab': ['4thsem14.png'],
    'Soft Skill Development Lab': ['4thsem15.png'],
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('4th Semester Syllabus'),
        backgroundColor: Colors.teal,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Official Syllabus from Makaut',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: Colors.teal[50],
                  borderRadius: BorderRadius.circular(12), // Rounded corners
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 3,
                      blurRadius: 5,
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      value: _selectedOption,
                      onChanged: (String? newValue) {
                        setState(() {
                          _selectedOption = newValue!;
                        });
                      },
                      dropdownColor: Colors.teal[50],
                      items: _imageGroups.keys
                          .map<DropdownMenuItem<String>>((String key) {
                        return DropdownMenuItem<String>(
                          value: key,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              key,
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        );
                      }).toList(),
                      icon: Icon(Icons.arrow_drop_down, color: Colors.teal),
                      style: TextStyle(color: Colors.teal, fontSize: 16),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Column(
              children: _imageGroups[_selectedOption]!
                  .map((imageName) => Container(
                        margin: EdgeInsets.symmetric(vertical: 10.0),
                        decoration: BoxDecoration(
                          color: Colors.blueGrey[50], // Light bluish-grey background
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: InteractiveViewer(
                          panEnabled: true,
                          minScale: 0.5,
                          maxScale: 4.0,
                          child: Image.asset(
                            'asset/$imageName',
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ))
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}


