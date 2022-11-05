import 'dart:convert';

import 'package:flutter_dependency_management_with_getx/controllers/shared_preference.dart';
import 'package:get/get.dart';
import '../models/student_model.dart';

class HomeController extends GetxController {
  var student =  StudentModel.empty().obs;
  SharedPreference sharedPreference=Get.find();

  void addStudent()async{
    var result = await addData(StudentModel(name: "Student 1 ${DateTime.now().toString()}", roll: 1));
    if(!result){
      return;
    }
    getStudent();
  }

  Future<bool> addData(StudentModel student)async{
    return sharedPreference.add(jsonEncode(student.toJson())).then((value) => value).catchError((e)=> false);
  }

  void getStudent()async {
    student.value = await getData();
  }

  Future<StudentModel> getData()async {
    return sharedPreference.get().then((data){
      if(data != null){
        var decoded = jsonDecode(data);
        return StudentModel.fromJson(decoded);
      }
      else {
        return StudentModel.empty();
      }
    }).catchError((e)=>
        StudentModel.empty()
    );
  }

}
