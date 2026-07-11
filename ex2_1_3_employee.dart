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
  // 4. เก็บพนักงานทั้งหมดลงใน List<Employee> เพื่อแสดงพลังของ Polymorphism
  List<Employee> employees = [
    FullTimeEmployee("สมชาย (ประจำ)", 30000.0),
    PartTimeEmployee("สมหญิง (พาร์ทไทม์)", 150.0, 80), // 150 บาท * 80 ชั่วโมง
    FullTimeEmployee("สมศักดิ์ (ประจำ)", 25000.0),
  ];

  print("=== รายงานเงินเดือนพนักงาน ===");
  
  // 5. วนลูปแสดงเงินเดือนผ่านเมธอดร่วม
  for (var emp in employees) {
    print("พนักงาน: ${emp.name} | เงินเดือนที่ได้รับ: ${emp.calculateSalary()} บาท");
  }
}