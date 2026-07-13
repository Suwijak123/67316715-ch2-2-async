class Student{
  String? name;
  int? age;
  int? grade;

  void displayInfo(){
    print("ชื่อนักศึกษา: $name");
    print("อายุ: $age ปี");
    print("ชั้นปี: $grade");
  }
}
void main(){
  Student s1 = Student();

  s1.name = "สมชาย ใจดี";
  s1.age = 20;
  s1.grade = 2;

  Student s2 = Student();
  s2.name = "สมหญิง ใจร้าย";
  s2.age = 21;

  s1.displayInfo();
  print("${s1.name} อายุ ${s1.age} ปี");
  print("${s2.name} อายุ ${s2.age} ปี");
}