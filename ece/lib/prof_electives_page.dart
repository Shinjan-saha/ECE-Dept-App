import 'package:flutter/material.dart';

class ProfElectivePage extends StatefulWidget {
  @override
  _ProfElectivePageState createState() => _ProfElectivePageState();
}

class _ProfElectivePageState extends State<ProfElectivePage> {
  String _selectedOption = 'Professional Electives Syllabus';

  final Map<String, List<String>> _imageGroups = {
    'Professional Electives Syllabus': ['pe.png'],
    'PE-EC505A': ['5thsem14.png'],
    'PE-EC505B': ['5thsem15.png'],
    'PE-EC505C': ['5thsem16.png','5thsem17.png'],
    'PE-EC505D': ['5thsem18.png','5thsem19.png'],
    'PE-EC603A': ['6thsem12.png'],
    'PE-EC603B': ['6thsem13.png'],
    'PE-EC603C': ['6thsem14.png'],
    'PE-EC603D': ['6thsem15.png'],


   
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Professional Electives Syllabus'),
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
