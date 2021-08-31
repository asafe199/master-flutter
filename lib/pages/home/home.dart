import 'package:flutter/material.dart';
import 'package:master/store/routes.dart';
import 'package:provider/provider.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:master/components/ui_textformfield.dart';
import 'package:master/infra/shared_preferences.dart';
import 'package:master/pages/home/home_controller.dart';
import 'package:master/utils/colors.dart';
import 'package:master/utils/screen_util.dart';
import 'package:master/utils/texts.dart';

class Home extends StatefulWidget {
  const Home() : super();

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends ModularState<Home, HomeController> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        actions: [
          IconButton(
            onPressed: (){
              Modular.to.pushNamed(Routes.HOME + Routes.SIGNUP);
            },
            icon: Icon(
              Icons.login,
              color: Colors.white,
            ),
          ),
        ],
      ),
      extendBodyBehindAppBar: true,
      backgroundColor: UIColors.defaultColor,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Container(
              height: ScreenUtil.screenHeight / 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FlutterLogo(
                    size: 80,
                    duration: Duration(seconds: 5),
                  ),
                  Text(
                    UIText.HOME,
                    style: TextStyle(fontSize: 30),
                  ),
                ],
              ),
            ),
            Material(
              elevation: 10,
              shadowColor: Colors.black12,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(80)),
              child: Container(
                height: ScreenUtil.screenHeight / 2,
                child: Padding(
                  padding: EdgeInsets.all(25),
                  child: Form(
                    key: controller.formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        UITextFormField.textFormField(controller.login,
                            validator: MultiValidator([
                              RequiredValidator(errorText: UIText.REQUIRED),
                              EmailValidator(errorText: UIText.EMAIL_INVALID),
                            ]),
                            textInputType: TextInputType.emailAddress),
                        UITextFormField.textFormField(
                          controller.senha,
                          validator:
                              RequiredValidator(errorText: UIText.REQUIRED),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            if (controller.formKey.currentState.validate()) {
                              controller.authLogin();
                            }
                          },
                          child: Text(UIText.LOGIN),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Switch(
        value: context.read<Preferences>().brightness,
        onChanged: (bool) async {
          await Preferences().setTheme(!bool);
        },
      ),
    );
  }

  @override
  void initState() {
    super.initState();
  }
}
