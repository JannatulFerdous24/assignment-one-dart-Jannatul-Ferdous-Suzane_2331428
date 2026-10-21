
import 'dart:math';

void main() {
  // 1. Create a list of student names
  List<String> studentNames = [
    "Alice",
    "Bob",
    "Charlie",
    "Diana",
    "Eve"
  ];

  // 2. Create a map to store student scores
  Map<String, int> studentScores = {};

  // 3. Assign random scores from 60 to 100
  Random random = Random();

  for (String student in studentNames) {
    studentScores[student] = 60 + random.nextInt(41);
  }

  // 4. Find highest, lowest, and average scores
  String highestStudent = "";
  int highestScore = 0;
  String lowestStudent = "";
  int lowestScore = 100;
  double totalScore = 0;

  for (String student in studentNames) {
    int score = studentScores[student]!;

    if (score > highestScore) {
      highestScore = score;
      highestStudent = student;
    }

    if (score < lowestScore) {
      lowestScore = score;
      lowestStudent = student;
    }

    totalScore += score;
  }

  double averageScore = totalScore / studentNames.length;

  print("Student Scores: $studentScores");
  print("Highest Score: $highestStudent with $highestScore");
  print("Lowest Score: $lowestStudent with $lowestScore");
  print("Average Score: $averageScore");

  // 5. Categorize each student's score using switch
  for (String student in studentNames) {
    int score = studentScores[student]!;
    String category = "";

    switch (score ~/ 10) {
      case 10:
      case 9:
        category = "Excellent";
        break;
      case 8:
        category = "Good";
        break;
      case 7:
        category = "Average";
        break;
      default:
        category = "Needs Improvement";
    }

    print("$student: $score ($category)");
  }
}
