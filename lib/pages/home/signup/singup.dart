import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:master/components/ui_textformfield.dart';
import 'package:master/pages/home/signup/singup_controller.dart';
import 'package:master/utils/texts.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends ModularState<SignUp, SignUpController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Form(
            key: controller.form,
            child: Column(
              children: [
                Row(
                  children: [
                    Flexible(
                      child: UITextFormField.textFormField(controller.name,
                          validator: RequiredValidator(errorText: UIText.REQUIRED)),
                    )
                  ],
                ),
                SizedBox(),
                Row(
                  children: [
                    Flexible(
                      child: UITextFormField.textFormField(controller.lastName,
                          validator: RequiredValidator(errorText: UIText.REQUIRED)),
                    )
                  ],
                ),
                Row(
                  children: [
                    Flexible(
                      child: UITextFormField.textFormField(controller.email,
                          validator: MultiValidator([
                            RequiredValidator(errorText: UIText.REQUIRED),
                            EmailValidator(errorText: UIText.EMAIL_INVALID)
                          ]),
                          textInputType: TextInputType.emailAddress
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Flexible(
                      child: UITextFormField.textFormField(controller.age,
                          validator: RequiredValidator(errorText: UIText.REQUIRED),
                          textInputType: TextInputType.number
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Flexible(child:
                      UITextFormField.textFormField(controller.phone, textInputType: TextInputType.phone)
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
