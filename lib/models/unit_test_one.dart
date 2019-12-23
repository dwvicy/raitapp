class UnitTestOne {
  String subjectName;

  int marksObtainedOne, totalMarksOne;

  UnitTestOne(this.subjectName, this.marksObtainedOne, this.totalMarksOne);

  UnitTestOne.fromJson(dynamic json)
      : subjectName = json['subject_name'],
        marksObtainedOne = int.parse(json['marks_obtained_one'].toString()),
        totalMarksOne = int.parse(json['total_marks_one'].toString());
}
