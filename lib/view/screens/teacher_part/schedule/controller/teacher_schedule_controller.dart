import 'package:get/get.dart';

class TeacherScheduleController extends GetxController{
  RxInt scheduleTypeIndex = 0.obs;
  ///============= tab bar ==========
  RxList<String> tabNamelist =
      <String>['Upcoming', 'Completed','Cancelled'].obs;
}