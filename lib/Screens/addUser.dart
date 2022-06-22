// ignore: file_names
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:karibu_visitor/modals/EmployeeData.dart';
import 'package:karibu_visitor/Screens/metrics/metrics.dart';
import 'package:karibu_visitor/modals/users.dart';

class Employee extends StatefulWidget {
  const Employee({Key? key}) : super(key: key);

  @override
  State<Employee> createState() => _EmployeeState();
}

class _EmployeeState extends State<Employee> with TickerProviderStateMixin {
  final List<Map<String, dynamic>> _previews = [];
  late Future<List<Users>> futureUsers;
  final Color color = const Color.fromARGB(0, 0, 0, 255);
  final TextEditingController _firstName = TextEditingController();
  final TextEditingController _lastName = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _confirmPassword = TextEditingController();
  final TextEditingController _email = TextEditingController();

  final Uri url = Uri.parse('http://67.205.140.117/api/users');

  @override
  void initState() {
    super.initState();
    futureUsers = fetchUsers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(children: [
          Column(crossAxisAlignment: CrossAxisAlignment.end,
              // verticalDirection: VerticalDirection.up,
              children: [
                const Divider(
                  height: 50,
                  thickness: 50,
                  indent: 16,
                  color: Colors.white,
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    showModalBottomSheet<void>(
                      context: context,
                      isDismissible: true,
                      //isScrollControlled: true,
                      enableDrag: true,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(45.0),
                      ),
                      builder: (BuildContext context) {
                        return SafeArea(
                            //height: 200,

                            child: ListView(
                          children: [
                            const SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 32),
                              child: Material(
                                child: Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Enter New Employee Details",
                                        style: GoogleFonts.montserrat(
                                            fontSize: 24,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 32),
                              child: Material(
                                elevation: 2.0,
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(30)),
                                child: TextField(
                                  onChanged: (String value) {},
                                  controller: _firstName,
                                  cursorColor: Colors.deepOrange,
                                  decoration: const InputDecoration(
                                      hintText: "First Name",
                                      prefixIcon: Material(
                                        elevation: 0,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(30)),
                                        child: Icon(
                                          Icons.person,
                                          color: Colors.blue,
                                        ),
                                      ),
                                      border: InputBorder.none,
                                      contentPadding: EdgeInsets.symmetric(
                                          horizontal: 25, vertical: 13)),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 32),
                              child: Material(
                                elevation: 2.0,
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(30)),
                                child: TextField(
                                  onChanged: (String value) {},
                                  controller: _lastName,
                                  cursorColor: Colors.deepOrange,
                                  decoration: const InputDecoration(
                                      hintText: "Last Name",
                                      prefixIcon: Material(
                                        elevation: 0,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(30)),
                                        child: Icon(
                                          Icons.person,
                                          color: Colors.blue,
                                        ),
                                      ),
                                      border: InputBorder.none,
                                      contentPadding: EdgeInsets.symmetric(
                                          horizontal: 25, vertical: 13)),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 32),
                              child: Material(
                                elevation: 2.0,
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(30)),
                                child: TextField(
                                  onChanged: (String value) {},
                                  controller: _email,
                                  cursorColor: Colors.deepOrange,
                                  decoration: const InputDecoration(
                                      hintText: "Email",
                                      prefixIcon: Material(
                                        elevation: 0,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(30)),
                                        child: Icon(
                                          Icons.email,
                                          color: Colors.blue,
                                        ),
                                      ),
                                      border: InputBorder.none,
                                      contentPadding: EdgeInsets.symmetric(
                                          horizontal: 25, vertical: 13)),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 32),
                              child: Material(
                                elevation: 2.0,
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(30)),
                                child: TextField(
                                  onChanged: (String value) {},
                                  controller: _password,
                                  cursorColor: Colors.deepOrange,
                                  decoration: const InputDecoration(
                                      hintText: "Password",
                                      prefixIcon: Material(
                                        elevation: 0,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(30)),
                                        child: Icon(
                                          Icons.password,
                                          color: Colors.blue,
                                        ),
                                      ),
                                      border: InputBorder.none,
                                      contentPadding: EdgeInsets.symmetric(
                                          horizontal: 25, vertical: 13)),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 32),
                              child: Material(
                                elevation: 2.0,
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(30)),
                                child: TextField(
                                  onChanged: (String value) {},
                                  controller: _confirmPassword,
                                  cursorColor: Colors.deepOrange,
                                  decoration: const InputDecoration(
                                      hintText: "Confirm Password",
                                      prefixIcon: Material(
                                        elevation: 0,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(30)),
                                        child: Icon(
                                          Icons.password,
                                          color: Colors.blue,
                                        ),
                                      ),
                                      border: InputBorder.none,
                                      contentPadding: EdgeInsets.symmetric(
                                          horizontal: 25, vertical: 13)),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ElevatedButton(
                                      onPressed: () {
                                        sendData();
                                      },
                                      child: const Text('Add Employee')),
                                ]),
                          ],
                        ));
                      },
                    );
                  },
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
                Card(
                  child: FutureBuilder<List<Users>>(
                      future: futureUsers,
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          // ignore: avoid_print
                          print(snapshot);
                          List<Users>? data = snapshot.data;
                          return ListView.builder(
                            itemCount: data!.length,
                            itemBuilder: (BuildContext context, int index) {
                              return ListTile(
                                title: Text(data[index].name),
                                subtitle:
                                    Text('Signed at:${data[index].clockin}'),
                              );
                            },
                          );
                        } else if (snapshot.hasError) {
                          return Text("${snapshot.error}");
                        }
                        return const CircularProgressIndicator();
                      }),

                  // // child: Column(
                  //   mainAxisSize: MainAxisSize.min,
                  //   children: const [
                  //     ListTile(
                  //       leading: Icon(Icons.person, color: Colors.green),
                  //       title: Text('Name'),
                  //       subtitle: Text.rich(TextSpan(children: [
                  //         TextSpan(text: "09:00 am"),
                  //       ])),
                  //     )
                  //   //],
                  // ),
                )
              ]),
        ]));
  }

  Future<http.Response> sendData() {
    return http.post(
      url,
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'name': _firstName.text,
        'email': _email.text,
        'password': _password.text,
        'password_confirmation': _confirmPassword.text
      }),
    );
  }

  Future<List<Users>> fetchUsers() async {
    final response = await http
        .get(Uri.parse('https://ellipsisattendance.herokuapp.com/user_logs'));

    if (response.statusCode == 200) {
      List jsonResponse = json.decode(response.body);
      return jsonResponse.map((data) => Users.fromJson(data)).toList();
      //return Users.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load users');
    }
  }
}
