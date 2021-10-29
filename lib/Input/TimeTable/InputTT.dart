import 'package:flutter/services.dart';
import 'dart:async';

class SubjectName {
  List<String> subjectname;

  SubjectName(this.subjectname);
}

Future<SubjectName> getName() async {
  SubjectName line;

  String csv = await rootBundle.loadString('../frame/assets/subjectname.csv');

  List<String> sn = csv.split(',');
  line = SubjectName(sn);
  return line;
}
