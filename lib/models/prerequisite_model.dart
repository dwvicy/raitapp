class PreRequisiteSubject {
  String subjName;

  int preReqMarksOb, preReqMaxMarks;

  PreRequisiteSubject(this.subjName, this.preReqMarksOb, this.preReqMaxMarks);

  PreRequisiteSubject.fromJson(dynamic json)
      : subjName = json['prereq_subj_name'],
        preReqMarksOb = int.parse(json['prereq_marks_obtained'].toString()),
        preReqMaxMarks = int.parse(json['prereq_max_marks'].toString());
}
