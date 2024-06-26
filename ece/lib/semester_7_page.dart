import 'package:flutter/material.dart';
import 'main_electives_page.dart';
import 'prof_electives_page.dart';

class Semester7Page extends StatefulWidget {
  @override
  _Semester7PageState createState() => _Semester7PageState();
}

class _Semester7PageState extends State<Semester7Page> {
  String _selectedOption = '7th Sem Syllabus';

  final Map<String, List<String>> _imageGroups = {
    '7th Sem Syllabus': ['7thsem.png'],
    'Principal of Mangements': ['7thsem01.png'],
    'PE-EC701A': ['7thsem2.png'],
    'PE-EC701B': ['7thsem3.png'],
    'PE-EC701C': ['7thsem4.png'],
    'PE-EC702A': ['7thsem5.png'],
    'PE-EC702B': ['7thsem6.png'],
    'PE-EC702C': ['7thsem8.png'],
    'PE-EC703A': ['7thsem9.png','7thsem10.png'],
    'PE-EC703B': ['7thsem11.png'],
    'PE-EC703C': ['7thsem12.png','7thsem13.png'],
    'OE-EC704A': ['7thsem15.png','7thsem16.png'],
    'OE-EC704B': ['7thsem17.png'],
    'OE-EC704C': ['7thsem18.png'],
    
    
   
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('7th Semester Syllabus'),
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
