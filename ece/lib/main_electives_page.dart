import 'package:flutter/material.dart';
import 'prof_electives_page.dart';

class OpenElectivePage extends StatefulWidget {
  @override
  _OpenElectivePageState createState() => _OpenElectivePageState();
}

class _OpenElectivePageState extends State<OpenElectivePage> {
  String _selectedOption = 'Open Electives Syllabus';

  final Map<String, List<String>> _imageGroups = {
    'Open Electives Syllabus': ['oe.png'],
    'OE-EC506A': ['5thsem20.png'],
    'OE-EC506B': ['5thsem21.png','5thsem22.png'],
    'OE-EC506C': ['5thsem23.png'],
    'OE-EC604A': ['6thsem16.png','6thsem17.png'],
    'OE-EC604B': ['6thsem18.png','6thsem19.png'],
    'OE-EC604C': ['6thsem20.png','6thsem21.png'],
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Electives Syllabus'),
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
                  borderRadius: BorderRadius.circular(12),
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
                        if (newValue == 'Open Electives') {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => OpenElectivePage()),
                          );
                        } else if (newValue == 'Professional Electives') {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProfElectivePage()),
                          );
                        } else {
                          setState(() {
                            _selectedOption = newValue!;
                          });
                        }
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
                      }).toList()
                        ..add(DropdownMenuItem<String>(
                          value: 'Open Electives',
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Open Electives',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        ))
                        ..add(DropdownMenuItem<String>(
                          value: 'Professional Electives',
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Professional Electives',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        )),
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
                          color: Colors.blueGrey[50],
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: Offset(0, 3),
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
