import 'dart:convert' as json;

import 'package:http/http.dart' as http;
import 'package:raitapp/models/prerequisite_model.dart';
import 'package:raitapp/models/subject_attendance.dart';
import 'package:raitapp/models/unit_test_one.dart';
import 'package:raitapp/models/unit_test_two.dart';

String baseUrl = "http://onlineservices.rait.ac.in:84/";

class RaitApi {
  http.Client client;

  RaitApi() {
    client = http.Client();
  }

  Future<List<SubjectAttendance>> getStudentAttendance(String rollNo) async {
    String attendanceEndPoint = "attendance/";
    http.Response response =
        await http.get(baseUrl + attendanceEndPoint + rollNo);
    String jsonString = response.body;
    List<dynamic> jsonData = json.jsonDecode(jsonString);
    List<SubjectAttendance> subjectAttendances =
        jsonData.map((json) => SubjectAttendance.fromJson(json)).toList();

    return subjectAttendances;
  }

  Future<List<PreRequisiteSubject>> getPreRequisiteSubject(
      String rollNo) async {
    String prerequisiteEndPoint = "prerequisite/";
    http.Response response =
        await http.get(baseUrl + prerequisiteEndPoint + rollNo);
    String jsonString = response.body;
    List<dynamic> jsonData = json.jsonDecode(jsonString);
    List<PreRequisiteSubject> preRequisiteSubjects =
        jsonData.map((json) => PreRequisiteSubject.fromJson(json)).toList();

    return preRequisiteSubjects;
  }

  Future<List<UnitTestOne>> getUnitTestOne(String rollNo) async {
    String unitTestOneEndPoint = "unit test one/";
    http.Response response =
        await http.get(baseUrl + unitTestOneEndPoint + rollNo);
    String jsonString = response.body;
    List<dynamic> jsonData = json.jsonDecode(jsonString);
    List<UnitTestOne> unitTestOnes =
        jsonData.map((json) => UnitTestOne.fromJson(json)).toList();

    return unitTestOnes;
  }

  Future<List<UnitTestTwo>> getUnitTestTwo(String rollNo) async {
    String unitTestTwoEndPoint = "unit test one/";
    http.Response response =
        await http.get(baseUrl + unitTestTwoEndPoint + rollNo);
    String jsonString = response.body;
    List<dynamic> jsonData = json.jsonDecode(jsonString);
    List<UnitTestTwo> unitTestTwos =
        jsonData.map((json) => UnitTestTwo.fromJson(json)).toList();

    return unitTestTwos;
  }

  Future<bool> checkLogin(String rollNo, String password) async {
    print(rollNo);
    print(password);
    String loginEndPoint = "login/";
    String url = baseUrl + loginEndPoint + rollNo + "/" + password;
    http.Response response = await http.get(url);
    print(url);
    String jsonResponse = response.body;
    print(jsonResponse);
    if (jsonResponse == "Authenticated") return true;
    return false;
  }
}
