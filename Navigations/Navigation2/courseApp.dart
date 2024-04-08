import 'package:flutter/material.dart';
import 'CourseDetailScreen.dart';
import 'CourseListScreen.dart';
import 'Class.dart';

class CourseApp extends StatefulWidget {
  const CourseApp({super.key});

  @override
  State<CourseApp> createState() => _CourseAppState();
}

class _CourseAppState extends State<CourseApp> {
  void _tabHandler(Course course) {
    setState(() {
      _selectedCourse = course;
    });
  }

  Course? _selectedCourse;
  List<Course> courses = [
    Course(
        code: 'Site-001',
        title: 'Introduction to Programming',
        description: 'Computer Organization, Architecture , Programming'),
    Course(
        code: 'Site-002',
        title: 'Introduction to Programming',
        description: 'Computer Organization, Architecture , Programming'),
    Course(
        code: 'Site-003',
        title: 'Introduction to Web Development',
        description: 'Computer Organization, Architecture , Programming')
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Navigator(
        pages: [
          MaterialPage(
              key: const ValueKey('CourseListScreen'),
              child: CoursesListScreen(
                courses: courses,
                onTapped: _tabHandler,
              )),
          if (_selectedCourse != null)
            MaterialPage(
                key: ValueKey(_selectedCourse),
                child: CoursesDetailScreen(
                  course: _selectedCourse!,
                ))
        ],
      ),
    );
  }
}
