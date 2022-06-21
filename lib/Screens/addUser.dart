// ignore: file_names
import 'package:flutter/material.dart';

class Employee extends StatefulWidget {
  const Employee({Key? key}) : super(key: key);

  @override
  State<Employee> createState() => _EmployeeState();
}

class _EmployeeState extends State<Employee> {
  final Color color = const Color.fromARGB(0, 0, 0, 255);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(crossAxisAlignment: CrossAxisAlignment.end,
          // verticalDirection: VerticalDirection.up,
          children: [
            const Divider(
              height: 16,
              thickness: 16,
              indent: 16,
              color: Colors.white,
            ),
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.add),
              style: ElevatedButton.styleFrom(
                primary: Colors.blueAccent,
                alignment: Alignment.topLeft,
              ),
              label: const Text('Add Employee'),
            ),
            const Divider(
              height: 16,
              thickness: 16,
              indent: 16,
              color: Colors.white,
            ),
          ]),
    );
  }
}
