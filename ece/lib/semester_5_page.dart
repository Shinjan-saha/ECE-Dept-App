import 'package:flutter/material.dart';

class Semester5Page extends StatefulWidget {
  @override
  _Semester5PageState createState() => _Semester5PageState();
}

class _Semester5PageState extends State<Semester5Page> {
  String _selectedOption = '5th Sem Syllabus';

  final Map<String, List<String>> _imageGroups = {
    '5th Sem Syllabus': ['5thsem.png'],
    'Electromagnetic Waves': ['5thsem1.png','5thsem2.png'],
    'Computer Architecture': ['5thsem3.png'],
    'Digital Commuinictation & Stochastic': ['5thsem4.png','5thsem5.png'],
    'Digital Signal Processing': ['5thsem6.png','5thsem7.png'],
    'Electromagnetic Waves Labratory': ['5thsem8.png'],
    'Digital Commuinctation Labratory': ['5thsem9.png'],
    'Digital Signal Processing Labratory': ['5thsem10.png'],
    'Effective Technical Commuinictation': ['5thsem11.png','5thsem12.png','5thsem13.png'],
    
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('5th Semester Syllabus'),
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


