// ignore: file_names
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Employee extends StatefulWidget {
  const Employee({Key? key}) : super(key: key);

  @override
  State<Employee> createState() => _EmployeeState();
}

class _EmployeeState extends State<Employee> {
  final Color color = const Color.fromARGB(0, 0, 0, 255);
  final TextEditingController _firstName = TextEditingController();
  final TextEditingController _lastName = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _confirmPassword = TextEditingController();
  final TextEditingController _email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(crossAxisAlignment: CrossAxisAlignment.end,
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
                  // shape: ,
                  builder: (BuildContext context) {
                    return SafeArea(
                        //height: 200,

                        child: ListView(
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 32),
                          child: Material(
                            child: Center(
                              child: Row(
                                children: [
                                  Text(
                                    "Enter New Employee Details",
                                    style: GoogleFonts.montserrat(fontSize: 14),
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
                          padding: const EdgeInsets.symmetric(horizontal: 32),
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
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(30)),
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
                          padding: const EdgeInsets.symmetric(horizontal: 32),
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
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(30)),
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
                          padding: const EdgeInsets.symmetric(horizontal: 32),
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
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(30)),
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
                          padding: const EdgeInsets.symmetric(horizontal: 32),
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
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(30)),
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
                          padding: const EdgeInsets.symmetric(horizontal: 32),
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
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(30)),
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
          ]),
    );
  }
}
