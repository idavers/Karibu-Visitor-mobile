// ignore: file_names
class EmployeeData {
  final String name;

  EmployeeData(this.name);

  Map<String, dynamic> toMap() {
    return {'name': name};
  }
}
