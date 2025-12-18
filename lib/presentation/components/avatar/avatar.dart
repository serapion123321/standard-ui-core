import 'package:flutter/material.dart';
import 'package:standard_ui_core/presentation/utility/utility.dart';
import 'package:standard_ui_core/standard_ui_core.dart';

/// Component of StandardAvatar
class StandardAvatar {
/// Component of Avatar
  Widget avatar({
    bool isUseMax = false, /// is use max, if not everything in source will be visible
    int countMax = 3, /// count max is must be not 0 and required if use max
    List<String>? source, /// String url for source
    Border? border, /// border
    double height = 72.0, /// height must be not 0
    double width = 72.0, /// width must be not 0, must be same with height, to make it circle
    double marginLeft = 12.0, /// margin left for avatar
    Color? bgColor, /// background color for max container
    Widget? customMaxWidget, /// custom max widget
    }) {

    Widget normalAvatar(index){
      return Positioned(
        left: index * marginLeft,
        child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(width),
            border: border ?? Border.all(color: Colors.transparent),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(source![index]),
            ),
          ),
        ),
      );
    }

    return SizedBox(
      width: InitialValue.screenWidth,
      height: height,
      child: Stack(
        alignment: AlignmentDirectional.topStart,
        children: List.generate(isUseMax ? source!.length <= countMax ? source.length : countMax + 1 : source!.length, (index) {
          return isUseMax ? index < countMax ? normalAvatar(index) : Positioned(
            left: index * marginLeft,
            child: Container(
              alignment: Alignment.center,
              height: height,
              width: width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                border: border ?? Border.all(color: Colors.transparent),
                color: bgColor ?? Colors.white,
              ),
              child: customMaxWidget ?? standardHeaderText(text: '+${source.length-countMax}'),
            ),
          ) : normalAvatar(index);
        }),
      ),
    );
  }
}
