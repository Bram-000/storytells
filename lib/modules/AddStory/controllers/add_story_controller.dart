import 'package:flutter/widgets.dart';
import 'package:flutter_picker/flutter_picker.dart';
import 'package:get/get.dart';

class AddStoryController extends GetxController {
  final addStoryFormKey = GlobalKey<FormState>();
  final ageController = TextEditingController();
  final storyController = TextEditingController();
  var categoryButtonTitle = 'Select category'.obs;
  var sexButtonTitle = 'Select sex'.obs;

  @override
  void onInit() {
// Simulating obtaining the user name from some local storage
    super.onInit();
  }

  @override
  void onClose() {
    ageController.dispose();
    storyController.dispose();
    super.onClose();
  }

  String? ageValidator(String? value) {
    final age = int.parse(value ?? "");
    if (value == null || value.isEmpty) {
      return 'Please this field must be filled';
    } else if (age < 16 || age > 99) {
      return 'You have to insert an age between 16 and 99';
    } else {
      return null;
    }
  }

  String? validator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please this field must be filled';
    }
    return null;
  }

  // void login() {
  //   if (addStoryFormKey.currentState!.validate()) {
  //     checkUser(ageController.text, storyController.text).then((auth) {
  //       if (auth) {
  //         Get.snackbar('Login', 'Login successfully');
  //       } else {
  //         Get.snackbar('Login', 'Invalid email or password');
  //       }
  //       storyController.clear();
  //     });
  //   }
  // }

  void showPicker(
      BuildContext context, List<dynamic>? pickerData, bool isCategory) {
    Picker picker = Picker(
        adapter: PickerDataAdapter<String>(
          pickerdata: pickerData,
        ),
        changeToFirst: true,
        textAlign: TextAlign.left,
        columnPadding: const EdgeInsets.all(8.0),
        onConfirm: (Picker picker, List value) {
          // print(value.toString());
          // print(picker.getSelectedValues());
          if (isCategory) {
            categoryButtonTitle.value =
                picker.getSelectedValues()[0].toString();
          } else {
            sexButtonTitle.value = picker.getSelectedValues()[0].toString();
          }
        });
    picker.showBottomSheet(context);
  }

// Api Simulation
  Future<bool> checkUser(String user, String password) {
    if (user == 'foo@foo.com' && password == '123') {
      return Future.value(true);
    }
    return Future.value(false);
  }
}
