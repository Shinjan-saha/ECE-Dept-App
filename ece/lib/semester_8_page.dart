import 'package:flutter/material.dart';
import 'main_electives_page.dart';
import 'prof_electives_page.dart';

class Semester8Page extends StatefulWidget {
  @override
  _Semester8PageState createState() => _Semester8PageState();
}

class _Semester8PageState extends State<Semester8Page> {
  String _selectedOption = '8th Sem Syllabus';

  final Map<String, List<String>> _imageGroups = {
    '8th Sem Syllabus': ['8thsem.png'],
    'PE-EC801A': ['8thsem1.png'],
    'PE-EC801B': ['8thsem2.png'],
    'PE-EC801C': ['8thsem3.png'],
    'PE-EC802A': ['8thsem4.png'],
    'PE-EC802B': ['8thsem5.png'],
    'PE-EC802C': ['8thsem6.png'],
    '0E-EC803A': ['8thsem7.png','8thsem8.png'],
    '0E-EC803B': ['8thsem9.png','8thsem10.png'],
    '0E-EC803C': ['8thsem11.png','8thsem12.png'],
    '0E-EC804B': ['8thsem13.png','8thsem14.png'],
    '0E-EC804C': ['8thsem15.png'],
    'EC881': ['8thsem16.png'],
    
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('8th Semester Syllabus'),
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
