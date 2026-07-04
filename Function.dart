void printHello(){
  print('Hello from function!');
}
int calculateLength(String text){
  return text.length;
}
void main(){
  printHello();
  int len = calculateLength('Dart is fun');
  print('Length is: $len');

describeNamed(name: 'Alice');
describeNamed(name: 'Charlie', age: 25);
describeNamed(age: 40, name: 'David');
describeDefault();
describeDefault(name: 'Eve');
print(say('Bob', 'Howdy?'));
print(say('Alice', 'Hi!','smartphone'));
int add(int a, int b) => a + b;
executeOperation(10, 5, add);
executeOperation(10, 5, subtract);
int a = 10;
int b = 5;
executeOperation(a, b, (x, y) => x * y);
}
void describe(String name, int age){
  print('$name is $age years old.');
}
void describeNamed({required String name, int? age}){
  print('$name is ${age ?? 'unknown'} years old.');
}
void describeDefault({String name ='Guest', int age = 18}){
  print('$name is $age years old.');
}
String say(String from,String msg,[String? device]){
  var result = '$from says $msg';
  if(device != null){
    result = '$result with a $device';
  }
  return result;
}
void printValue(int val) => print('Value: $val');
void executeOperation(int a, int b, int Function(int, int) operation)
{
  var result = operation(a, b);
  print('Result: $result');
}

int subtract(int x, int y){
  return x - y;
}




