import 'package:flutter/material.dart';
import 'semester_1_page.dart';
import 'semester_2_page.dart';
import 'semester_3_page.dart';
import 'semester_4_page.dart';
import 'semester_5_page.dart';
import 'semester_6_page.dart';
import 'semester_7_page.dart';
import 'semester_8_page.dart';
import 'main_electives_page.dart';
import 'prof_electives_page.dart';

class SyllabusPage extends StatefulWidget {
  const SyllabusPage({Key? key}) : super(key: key);

  @override
  _SyllabusPageState createState() => _SyllabusPageState();
}

class _SyllabusPageState extends State<SyllabusPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<Offset> _leftButtonAnimation;
  late Animation<Offset> _rightButtonAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: Duration(milliseconds: 800),
      vsync: this,
    );

    final double beginOffset = 1.0;
    final double endOffset = 0.0;
    final double slideDelay = 0.2;

    _leftButtonAnimation = Tween<Offset>(
      begin: Offset(-beginOffset, 0.0),
      end: Offset(endOffset, 0.0),
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Interval(0.0, slideDelay, curve: Curves.easeInOut),
    ));

    _rightButtonAnimation = Tween<Offset>(
      begin: Offset(beginOffset, 0.0),
      end: Offset(-endOffset, 0.0),
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Interval(slideDelay, 1.0, curve: Curves.easeInOut),
    ));

    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  Widget _buildRectangleBox(BuildContext context, String text, Widget nextPage,
      Animation<Offset> animation) {
    return SlideTransition(
      position: animation,
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => nextPage),
          );
        },
        child: Container(
          width: 150,
          height: 80,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(50),
          ),
          child: Center(
            child: SingleChildScrollView(
              child: Text(
                text,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Syllabus of All 8 Semesters of ECE',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SlideTransition(
                    position: _leftButtonAnimation,
                    child: Column(
                      children: [
                        _buildRectangleBox(
                            context, 'Semester 1', Semester1Page(), _leftButtonAnimation),
                        SizedBox(height: 10),
                        _buildRectangleBox(
                            context, 'Semester 3', Semester3Page(), _leftButtonAnimation),
                        SizedBox(height: 10),
                        _buildRectangleBox(
                            context, 'Semester 5', Semester5Page(), _leftButtonAnimation),
                        SizedBox(height: 10),
                        _buildRectangleBox(
                            context, 'Semester 7', Semester7Page(), _leftButtonAnimation),
                        SizedBox(height: 10),
                        _buildRectangleBox(context, 'Open Elective',
                            OpenElectivePage(), _leftButtonAnimation),
                      ],
                    ),
                  ),
                  SlideTransition(
                    position: _rightButtonAnimation,
                    child: Column(
                      children: [
                        _buildRectangleBox(
                            context, 'Semester 2', Semester2Page(), _rightButtonAnimation),
                        SizedBox(height: 10),
                        _buildRectangleBox(
                            context, 'Semester 4', Semester4Page(), _rightButtonAnimation),
                        SizedBox(height: 10),
                        _buildRectangleBox(
                            context, 'Semester 6', Semester6Page(), _rightButtonAnimation),
                        SizedBox(height: 10),
                        _buildRectangleBox(
                            context, 'Semester 8', Semester8Page(), _rightButtonAnimation),
                        SizedBox(height: 10),
                        _buildRectangleBox(context, 'Prof Elective',
                            ProfElectivePage(), _rightButtonAnimation),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Main function

void main() {
  runApp(MaterialApp(
    home: SyllabusPage(),
  ));
}
