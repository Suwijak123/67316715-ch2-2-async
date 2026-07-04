void greet(String name){
  print('Hello, $name');
}
int multiply(int a, int b) => a * b;
int multiply2(int a, int b, int c) => a * b * c;
double calculateArea({required double width, required double height})
{
  return width * height;
}
double calculateVolume({required double width, required double height, required double length})
{
  return width * height * length;
}
void main(){
  greet('Suwijak');

  int product = multiply(6, 7);
  print('6 * 7 = $product');

  double area = calculateArea(width: 5.5, height: 10.0);
  print('Area (5.5 x 10.0 = $area)');

  double area2 = calculateArea(height: 8.0, width: 4.0);
  print('Area (4.0 x 8.0 = $area2)');

  double area3 = calculateVolume(width: 9.0, height: 4.0, length: 6.5);
  print('Area (9.0 x 4.0 x 6.5 = $area3)');
}