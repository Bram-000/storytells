import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:storytells/models/sex_model.dart';
import 'package:storytells/widgets/form_elevated_button.dart';

import '../../../models/category_model.dart';
import '../../../themes/theme.dart';
import '../controllers/add_story_controller.dart';

class AddStoryView extends GetView<AddStoryController> {
  const AddStoryView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return Scaffold(
          appBar: AppBar(
            title: TextButton(
              onPressed: () {},
              child: Text(
                "add_story".tr,
                style: STheme.appBarTitleStyle,
              ),
            ),
          ),
          body: Form(
            key: controller.addStoryFormKey,
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
              child: Obx(
                () => Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('lorem_ipsum'.tr),
                    TextFormField(
                      textAlign: TextAlign.center,
                      controller: controller.ageController,
                      decoration: InputDecoration(labelText: 'age_form'.tr),
                      validator: controller.ageValidator,
                      keyboardType: TextInputType.number,
                    ),
                    TextFormField(
                      maxLines: 6,
                      minLines: 6,
                      controller: controller.storyController,
                      decoration: InputDecoration(labelText: 'tell_form'.tr),
                      validator: controller.validator,
                      keyboardType: TextInputType.multiline,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 45.w,
                          child: FormElevatedButton(
                            gradient: controller.categoryButtonColor.value,
                            onPressed: () => controller.showPicker(
                              context,
                              Category.values.map((cat) => cat.name).toList(),
                              true,
                            ),
                            child: Text(controller.categoryButtonTitle.value),
                          ),
                        ),
                        SizedBox(
                          width: 45.w,
                          child: FormElevatedButton(
                            gradient: controller.sexButtonColor.value,
                            onPressed: () => controller.showPicker(
                              context,
                              Sex.values.map((sex) => sex.name).toList(),
                              false,
                            ),
                            child: Text(controller.sexButtonTitle.value),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 100.w,
                      height: 7.h,
                      child: FormElevatedButton(
                        gradient: controller.sexButtonColor.value,
                        onPressed: null,
                        child: Text('add_button_form'.tr),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
