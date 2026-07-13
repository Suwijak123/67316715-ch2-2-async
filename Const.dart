class Student {
  String? name;
  int? age;
  int? rollNumber;

Student(String name, int age, int rollNumber){
  this.name = name;
  this.age = age;
  this.rollNumber = rollNumber;
  //Student(this.anme, this.age, this.rollNumber);
}
void display(){
  print("ชื่อ: $name, อายุ: $age, เลขที่: $rollNumber");
 }
}
class Point{
  double x = 0;
  double y = 0;
  Point(this.x, this.y);

  Point.origin(){
    x = 0;
    y = 0;
  }
  void display() => print("จุด (x: $x, y: $y)");
}
class Chair{
  String?  name;
  String?  color;

  Chair({this.name, this.color});

  void display(){
    print("ชื่อ: $name, สี: $color");
  }
}
class ImmutablePoint{
  final double x;
  final double y;

  const ImmutablePoint(this.x,this.y);
}
void main(){
  Student s = Student("จอห์น", 20, 1);
  s.display();

  Point p1 = Point(3,4);
  Point p2 = Point.origin();
  p1.display();
  p2.display();

  Chair chair = Chair(color: "แดง", name: "เก้าอี้ตัวที่ 1");//Named parameters
  chair.display();

  const p3 = ImmutablePoint(1, 2);
  const p4 = ImmutablePoint(1, 2);
  print(identical(p3, p4));//checkว่าชี้ไปยังobjectเดียวกัน
  }