
void main() {
  List<String> subjects = ['Cal', 'Phy', 'Comarh'];
  print('number of subjects: ${subjects.length}');
  print('first subject: ${subjects[0]}');
  print('last subject: ${subjects.last}');

  subjects.add('Eng');
  print('updated subject: ${subjects}');

  Map<String, int>studentscore ={
    'Cal':75 ,
    'Phy':85,
    'Comarh':89
  };
  print('Score for Cal: ${studentscore['Cal']}');

  studentscore['Eng'] = 80;
  print('updated: $studentscore');
  print('All subjects in map: ${studentscore.keys}');
  print('All scores in map: ${studentscore.values}');

}

