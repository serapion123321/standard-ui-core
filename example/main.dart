import 'package:flutter/material.dart';
import 'package:standard_ui_core/standard_ui_core.dart';
import 'package:standard_ui_core/presentation/components/button/button.dart';
import 'package:standard_ui_core/presentation/components/chip/chip.dart';
import 'package:standard_ui_core/presentation/components/fab/fab.dart';
import 'package:standard_ui_core/presentation/components/form/form.dart';
import 'package:standard_ui_core/presentation/core/icon_position.dart';
import 'package:standard_ui_core/presentation/utility/color.dart';
import 'package:standard_ui_core/presentation/utility/typography.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Standard UI Core',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Standard UI Core Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  void initState() {
    //setInitialBodyFontSize();
    setColorPrimary();
    setScreenSize();
    super.initState();
  }

  /// Uncomment this to change body font size
  // void setInitialBodyFontSize(){
  //   InitialValue.setBodyFontSize(
  //       bodyTextXxl: 64,
  //       bodyTextXl: 24,
  //       bodyTextL: 52,
  //       bodyTextM: 48,
  //       bodyTextS: 40,
  //       bodyTextXs: 38,
  //       bodyTextXxs: 24
  //   );
  // }

  void setScreenSize(){
    InitialValue.setScreenSize(
        screenSizeCustom: Get.size
    );
  }

  void setColorPrimary() {
    InitialValue.setPrimaryColor(
        primary500: const Color(0xff00e9ff),
        primary700: const Color(0xff7FFFD4));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Container(
          margin: const EdgeInsets.symmetric(horizontal: 16),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const <Widget>[
                HeaderFontWidget(),
                BodyFontWidget(),
                ButtonPrimaryBySizeWidget(),
                ButtonPrimaryByStateWidget(),
                ButtonSecondaryBySizeWidget(),
                ButtonSecondaryByStateWidget(),
                ButtonTertiaryByStateWidget(),
                ChipBySizeWidget(),
                ChipByStateWidget(),
                ChipBySizeIconDefaultWidget(),
                ChipByIconWidget(),
                FormBasic()
              ],
            ),
          ),
        ),
        floatingActionButton: StandardFab().fab(
          iconWidget: const Icon(Icons.add),
          title: "Add For More",
          iconPosition: IconPosition.left,
          onTap: () {
            debugPrint("Tapped");
          },
        ));
  }
}

class HeaderFontWidget extends StatelessWidget {
  const HeaderFontWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          standardHeaderText(
            text: "Header Font",
            color: ColorTheme.primary500,
          ),
          standardHeaderText(
              text: "Header H1",
              color: ColorTheme.primary500,
              fontSize: StandardFontSize.h1),
          standardHeaderText(
              text: "Header H2",
              color: ColorTheme.primary500,
              fontSize: StandardFontSize.h2),
          standardHeaderText(
              text: "Header H3",
              color: ColorTheme.primary500,
              fontSize: StandardFontSize.h3),
          standardHeaderText(
              text: "Header H4",
              color: ColorTheme.primary500,
              fontSize: StandardFontSize.h4),
          standardHeaderText(
              text: "Header H5",
              color: ColorTheme.primary500,
              fontSize: StandardFontSize.h5),
          standardHeaderText(
              text: "Header H6",
              color: ColorTheme.primary500,
              fontSize: StandardFontSize.h6),
        ],
      ),
    );
  }
}

class BodyFontWidget extends StatelessWidget {
  const BodyFontWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          standardHeaderText(
            text: "Body Font",
            color: ColorTheme.primary500,
          ),
          standardHeaderText(
              text: "Body XXL",
              color: ColorTheme.primary500,
              fontSize: StandardFontSize.bodyTextXxl),
          standardHeaderText(
              text: "Body XL",
              color: ColorTheme.primary500,
              fontSize: StandardFontSize.bodyTextXl),
          standardHeaderText(
              text: "Body L",
              color: ColorTheme.primary500,
              fontSize: StandardFontSize.bodyTextL),
          standardHeaderText(
              text: "Body M",
              color: ColorTheme.primary500,
              fontSize: StandardFontSize.bodyTextM),
          standardHeaderText(
              text: "Body S",
              color: ColorTheme.primary500,
              fontSize: StandardFontSize.bodyTextS),
          standardHeaderText(
              text: "Body XS",
              color: ColorTheme.primary500,
              fontSize: StandardFontSize.bodyTextXs),
          standardHeaderText(
              text: "Body XXS",
              color: ColorTheme.primary500,
              fontSize: StandardFontSize.bodyTextXxs),
        ],
      ),
    );
  }
}

class ButtonPrimaryBySizeWidget extends StatelessWidget {
  const ButtonPrimaryBySizeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          standardHeaderText(text: "Button Primary By Size"),
          StandardButton().primaryButton(
            onTap: () {
              debugPrint("Full Width");
            },
            title: "Full Width",
          ),
          StandardButton().primaryButton(
            buttonSize: ButtonSize.large,
            onTap: () {
              debugPrint("Large");
            },
            title: "Large",
          ),
          StandardButton().primaryButton(
            buttonSize: ButtonSize.medium,
            onTap: () {
              debugPrint("Medium");
            },
            title: "Medium",
          ),
          StandardButton().primaryButton(
            buttonSize: ButtonSize.small,
            onTap: () {
              debugPrint("Small");
            },
            title: "Small",
          ),
        ],
      ),
    );
  }
}

class ButtonPrimaryByStateWidget extends StatelessWidget {
  const ButtonPrimaryByStateWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          standardHeaderText(text: "Button Primary By State"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              StandardButton().primaryButton(
                buttonSize: ButtonSize.small,
                onTap: () {
                  debugPrint("Normal");
                },
                title: "Normal",
              ),
              StandardButton().primaryButton(
                  buttonSize: ButtonSize.small,
                  onTap: () {
                    debugPrint("Disabled");
                  },
                  title: "Disabled",
                  isDisabled: true),
              StandardButton().primaryButton(
                  buttonSize: ButtonSize.small,
                  onTap: () {
                    debugPrint("Loading");
                  },
                  title: "Loading",
                  isLoading: true),
            ],
          )
        ],
      ),
    );
  }
}

class ButtonSecondaryBySizeWidget extends StatelessWidget {
  const ButtonSecondaryBySizeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          standardHeaderText(text: "Button Secondary By Size"),
          StandardButton().secondaryButton(
            onTap: () {
              debugPrint("Full Width");
            },
            title: "Full Width",
          ),
          StandardButton().secondaryButton(
            buttonSize: ButtonSize.large,
            onTap: () {
              debugPrint("Large");
            },
            title: "Large",
          ),
          StandardButton().secondaryButton(
            buttonSize: ButtonSize.medium,
            onTap: () {
              debugPrint("Medium");
            },
            title: "Medium",
          ),
          StandardButton().secondaryButton(
            buttonSize: ButtonSize.small,
            onTap: () {
              debugPrint("Small");
            },
            title: "Small",
          ),
        ],
      ),
    );
  }
}

class ButtonSecondaryByStateWidget extends StatelessWidget {
  const ButtonSecondaryByStateWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          standardHeaderText(text: "Button Secondary By State"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              StandardButton().secondaryButton(
                buttonSize: ButtonSize.small,
                onTap: () {
                  debugPrint("Normal");
                },
                title: "Normal",
              ),
              StandardButton().secondaryButton(
                  buttonSize: ButtonSize.small,
                  onTap: () {
                    debugPrint("Disabled");
                  },
                  title: "Disabled",
                  isDisabled: true),
              StandardButton().secondaryButton(
                  buttonSize: ButtonSize.small,
                  onTap: () {
                    debugPrint("Loading");
                  },
                  title: "Loading",
                  isLoading: true),
            ],
          )
        ],
      ),
    );
  }
}

class ButtonTertiaryByStateWidget extends StatelessWidget {
  const ButtonTertiaryByStateWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          standardHeaderText(text: "Button Tertiary By State"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              StandardButton().tertiaryButton(
                onTap: () {
                  debugPrint("Normal");
                },
                title: "Normal",
              ),
              StandardButton().tertiaryButton(
                  onTap: () {
                    debugPrint("Disabled");
                  },
                  title: "Disabled",
                  isDisabled: true),
              StandardButton().tertiaryButton(
                  onTap: () {
                    debugPrint("Loading");
                  },
                  title: "Loading",
                  isLoading: true),
            ],
          )
        ],
      ),
    );
  }
}

class ChipBySizeWidget extends StatelessWidget {
  const ChipBySizeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          standardHeaderText(text: "Chip By Size"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              StandardChip().chip(
                chipSize: ChipSize.small,
                onTap: () {
                  debugPrint("Small");
                },
                title: "Small",
              ),
              StandardChip().chip(
                chipSize: ChipSize.medium,
                onTap: () {
                  debugPrint("Medium");
                },
                title: "Medium",
              ),
              StandardChip().chip(
                chipSize: ChipSize.large,
                onTap: () {
                  debugPrint("Large");
                },
                title: "Large",
              ),
            ],
          )
        ],
      ),
    );
  }
}

class ChipByStateWidget extends StatelessWidget {
  const ChipByStateWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          standardHeaderText(text: "Chip By State"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              StandardChip().chip(
                  chipSize: ChipSize.small,
                  onTap: () {
                    debugPrint("Small");
                  },
                  title: "Small",
                  isDisabled: true),
              StandardChip().chip(
                chipSize: ChipSize.small,
                onTap: () {
                  debugPrint("Small");
                },
                title: "Small",
              ),
            ],
          )
        ],
      ),
    );
  }
}

class ChipBySizeIconDefaultWidget extends StatelessWidget {
  const ChipBySizeIconDefaultWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          standardHeaderText(text: "Chip By Size Using icon Default"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              StandardChip().chip(
                  chipSize: ChipSize.small,
                  onTap: () {
                    debugPrint("Small");
                  },
                  title: "Small",
                  onTapClose: () {
                    debugPrint("close");
                  },
                  isUsingCloseIcon: true),
              StandardChip().chip(
                  chipSize: ChipSize.medium,
                  onTap: () {
                    debugPrint("Medium");
                  },
                  title: "Medium",
                  onTapClose: () {
                    debugPrint("close");
                  },
                  isUsingCloseIcon: true),
              StandardChip().chip(
                  chipSize: ChipSize.large,
                  onTap: () {
                    debugPrint("Large");
                  },
                  title: "Large",
                  onTapClose: () {
                    debugPrint("close");
                  },
                  isUsingCloseIcon: true),
            ],
          )
        ],
      ),
    );
  }
}

class ChipByIconWidget extends StatelessWidget {
  const ChipByIconWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          standardHeaderText(text: "Chip By Icon"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              StandardChip().chip(
                  chipSize: ChipSize.small,
                  onTap: () {
                    debugPrint("Small");
                  },
                  title: "Small",
                  iconWidget: Icon(
                    Icons.add,
                    color: ColorTheme.black,
                  )),
              StandardChip().chip(
                chipSize: ChipSize.small,
                onTap: () {
                  debugPrint("Small");
                },
                title: "custom icon",
                isUsingCloseIcon: true,
                iconCloseWidget: Container(
                    margin: const EdgeInsets.only(left: 4),
                    child: GestureDetector(
                        onTap: () {
                          debugPrint("close");
                        },
                        child: const Icon(Icons.delete,
                            color: Colors.red, size: 12))),
              ),
              StandardChip().chip(
                chipSize: ChipSize.small,
                onTap: () {
                  debugPrint("Small");
                },
                title: "Small",
                onTapClose: () {
                  debugPrint("close");
                },
                isUsingCloseIcon: true,
              ),
            ],
          )
        ],
      ),
    );
  }
}

class FormBasic extends StatelessWidget {
  const FormBasic({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          standardHeaderText(text: "Form Basic"),
          StandardForm().basic(
              margin: const EdgeInsets.only(top: 12),
              labelText: "Label",
              hintText: "this is hint text",
              initialValue: "Read only form",
              hintStyle: BodyTextStyle.textStyle(color: ColorTheme.primary500),
              disabledColor: ColorTheme.black,
              labelColor: ColorTheme.secondary300,
              enabled: false,
              validator: (val){
                if(val == "123"){
                  return "123 type";
                } else {
                  return null;
                }
              }
          ),
          StandardForm().basic(
              margin: const EdgeInsets.only(top: 12),
              labelText: "Label",
              hintText: "validator form, type 123 to see it",
              disabledColor: ColorTheme.black,
              enabled: true,
              validator: (val){
                if(val == "123"){
                  return "type 123";
                } else {
                  return null;
                }
              }
          )
        ],
      ),
    );
  }
}
