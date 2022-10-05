import 'package:flutter/material.dart';
import 'package:todo_app/modules/archive_tasks/archived_tasks_screen.dart';
import 'package:todo_app/modules/done_tasks/done_tasks_screen.dart';
import 'package:todo_app/modules/new_tasks/new_tasks_screen.dart';
// ignore_for_file: prefer_const_constructors

// ignore: camel_case_types
class Home_layout extends StatefulWidget {
  const Home_layout({super.key});

  @override
  State<Home_layout> createState() => _Home_layoutState();
}

// ignore: camel_case_types
class _Home_layoutState extends State<Home_layout> {
  int currentIndex = 0;
  List<String> title = ['New tasks', ' Done tasks', ' Archived tasks'];

  List<Widget> screens = [
    NewTasksScreen(),
    DoneTasksScreen(),
    ArchivedTasksScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      appBar: AppBar(
        title: Text(title[currentIndex]),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {},
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        // ignore: prefer_const_literals_to_create_immutables
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'Tasks'),
          BottomNavigationBarItem(icon: Icon(Icons.done), label: 'Done'),
          BottomNavigationBarItem(icon: Icon(Icons.archive), label: 'Archive'),
        ],
      ),
    );
  }
}
