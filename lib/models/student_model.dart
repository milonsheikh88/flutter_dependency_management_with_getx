class StudentModel {
  String name;
  int roll;

  StudentModel({required this.name,required this.roll});
  factory StudentModel.empty(){
    return StudentModel(name: "", roll: -1);
  }

  factory StudentModel.fromJson(Map<String, dynamic> json) => StudentModel(
    name: json['name']??"",
    roll: json['roll']??"",
  );

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['roll'] = roll;
    return data;
  }
}