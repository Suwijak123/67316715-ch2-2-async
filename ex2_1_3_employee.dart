class Employee {
String name;
Employee(this.name);

double calculateSalary() {
    return 0.0;
 }
}

class FullTimeEmployee extends Employee {
  double monthlySalary;

  FullTimeEmployee(String name, this.monthlySalary) : super(name);

  @override
  double calculateSalary() {
    return monthlySalary;
  }
}

class PartTimeEmployee extends Employee {
  double hourlyRate;
  int hoursWorked;

  PartTimeEmployee(String name, this.hourlyRate, this.hoursWorked) : super(name);

  @override
  double calculateSalary() {
    return hourlyRate * hoursWorked;
  }
}

void main() {
  List<Employee> employees = [
    FullTimeEmployee("สมชาย (ประจำ)", 30000.0),
    PartTimeEmployee("สมหญิง (พาร์ทไทม์)", 150.0, 80),
    FullTimeEmployee("สมศักดิ์ (ประจำ)", 25000.0),
  ];

  print("รายงานเงินเดือนพนักงาน");
  
  for (var emp in employees) {
    print("พนักงาน: ${emp.name} | เงินเดือนที่ได้รับ: ${emp.calculateSalary()} บาท");
  }
}