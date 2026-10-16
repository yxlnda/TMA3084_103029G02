import 'myLib.dart';

void main() {
  Employee emp = Employee("Ali", 5000, 35, 2);

  double totalSalary = emp.calculateTotalSalary();

  print("Total Salary = \$${totalSalary} USD");
}
