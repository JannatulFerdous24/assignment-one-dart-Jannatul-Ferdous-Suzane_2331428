
 // Question 1: Basic Data Types & Functions

String name = "John Doe";
int age = 25;
double height = 5.9;
bool isStudent = true;

double calculateBMI(double weight, double height) {
  return weight / (height * height);
}

String getGrade(int score) {
  if (score >= 90 && score <= 100) {
    return "A";
  } else if (score >= 80 && score <= 89) {
    return "B";
  } else if (score >= 70 && score <= 79) {
    return "C";
  } else if (score >= 60 && score <= 69) {
    return "D";
  } else {
    return "F";
  }
}

void main() {
  double bmi = 22.5;
  String grade = getGrade(85);

  print("Name: $name, Age: $age, Height: $height, Is Student: $isStudent");
  print("BMI: $bmi");
  print("Grade: $grade");
}
