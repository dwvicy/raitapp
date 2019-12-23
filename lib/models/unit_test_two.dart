class UnitTestTwo {
  String subjectName;

  int marksObtainedTwo, totalMarksTwo;

  UnitTestTwo(this.subjectName, this.marksObtainedTwo, this.totalMarksTwo);

  UnitTestTwo.fromJson(dynamic json)
      : subjectName = json['subject_name'],
        marksObtainedTwo = int.parse(json['marks_obtained_two'].toString()),
        totalMarksTwo = int.parse(json['total_marks_two'].toString());
}
