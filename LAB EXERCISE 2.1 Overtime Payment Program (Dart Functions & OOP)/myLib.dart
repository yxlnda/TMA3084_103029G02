class Employee {
  String name;
  double basicSalary;
  double overtimeRate;
  int overtimeHours;

  Employee(this.name, this.basicSalary, this.overtimeRate, this.overtimeHours);

  double calculateOvertimePay() {
    return overtimeRate * overtimeHours;
  }

  double calculateTotalSalary() {
    return basicSalary + calculateOvertimePay();
  }
}
