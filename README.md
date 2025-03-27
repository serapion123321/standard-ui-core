
## Table Of Contents

- [Description](https://github.com/serapion123321/standard-ui-core#description)
- [Vision](https://github.com/serapion123321/standard-ui-core#vision)
- [Getting Started](https://github.com/serapion123321/standard-ui-core#getting-started)
- [Components](https://github.com/serapion123321/standard-ui-core#components)
    - [Text](https://github.com/serapion123321/standard-ui-core#text)
        - [Header Text](https://github.com/serapion123321/standard-ui-core#header-text)
        - [Body Text](https://github.com/serapion123321/standard-ui-core#body-text)
    - [Button](https://github.com/serapion123321/standard-ui-core#button)
        - [Button State (All button type have this)](https://github.com/serapion123321/standard-ui-core#button)
        - [Button Type](https://github.com/serapion123321/standard-ui-core#button-type)
    - [Chip](https://github.com/serapion123321/standard-ui-core#chip)
        - [Chip Size](https://github.com/serapion123321/standard-ui-core#chip-size)
        - [Chip Properties](https://github.com/serapion123321/standard-ui-core#chip-properties)
    - [Floating Action Button](https://github.com/serapion123321/standard-ui-core#floating-action-button)
        - [FAB Properties](https://github.com/serapion123321/standard-ui-core#fab-properties)
    - [Form](https://github.com/serapion123321/standard-ui-core#form)
        - [Form Properties](https://github.com/serapion123321/standard-ui-core#form-properties)
- [To Do / Roadmap](https://github.com/serapion123321/standard-ui-core#to-do--roadmap)
- [Information](https://github.com/serapion123321/standard-ui-core#information)

## Description

Flutter simple UI core. This plugin is about UI only. All of the UI here are header text, body text, buttons, chips,  FAB and form. You can customize their color and make your own color. This plugin is focused on making your development fast and easy while still having a beautiful UI. More components will added shortly.

## Vision

> Fast and Easy while develop boring component without any UI sacrifice

## Getting started

use InitialValue.setScreenSize to get width and height for device (place it in very first initState on your app. You can use get package or mediaquery is really up to you

```dart  
void setScreenSize(){    
  InitialValue.setScreenSize(    
    screenSizeCustom: Get.size  /// using get package  
 ); }  
```  

You can change color default, there are many color default thay i prepare, they are : neutral color, primary color, secondary color, success color, danger color, grey color, and blue-grey color all with 9 shade, example primary500, danger300. Here to change them :

```dart  
void setColorPrimary() {    
  InitialValue.setPrimaryColor(    
  /// InitialValue.setPrimaryColor can be change to any group color you want to change  
 /// here just change primary 500 and primary700
      primary500: const Color(0xff00e9ff), 
      primary700: const Color(0xff7FFFD4)
  ); 
}  
```  

You can change default size for any header text and body text, just use this function

```dart  
void setInitialBodyFontSize(){    
  InitialValue.setBodyFontSize(   
  /// Here to change body font size   
     bodyTextXxl: 64,    
     bodyTextXl: 24,    
     bodyTextL: 52,    
     bodyTextM: 48,    
     bodyTextS: 40,    
     bodyTextXs: 38,    
     bodyTextXxs: 24    
); }  
```  

## Components

## Text

### Header Text
for the default size is H3 and color is ColorTheme.black

|Type  | Default Color  |  Default Size |  
|--|--|--|  
| H1 | ColorTheme.black | 32 |  
| H2 | ColorTheme.black | 28|  
| H3 | ColorTheme.black | 24 |  
| H4 | ColorTheme.black | 20 |  
| H5 | ColorTheme.black | 16 |  
| H6 | ColorTheme.black | 12 |

### Body Text
for the default size is bodyTextS and color is ColorTheme.black

|Type  | Default Color  |  Default Size |  
|--|--|--|  
| bodyTextXxl| ColorTheme.black | 28|  
| bodyTextXl| ColorTheme.black | 24|  
| bodyTextL| ColorTheme.black | 20|  
| bodyTextM| ColorTheme.black | 16 |  
| bodyTextS| ColorTheme.black | 12 |  
| bodyTextXs| ColorTheme.black | 10 |  
| bodyTextXxs| ColorTheme.black | 8 |

## Button

### Button State

- Enable
- Loading
- Disable

### Button Type

- **Primary Button**

|Properties| Default Value    
|--|--  
| title| null  
| margin| EdgeInsets.symmetric(vertical: 4)  
| buttonSize| ButtonSize.fullWidth  
| borderRadius| 12  
| elevation| 1  
| isLoading| false  
| isDisabled| false  
| backgroundColor| ColorTheme.primary700  
| disabledBackgroundColor| ColorTheme.grey700  
| titleColor|  ColorTheme.black  
| disabledTitleColor| ColorTheme.black  
| splashColor| ColorTheme.white  
| disabledSplashColor| Colors.transparent  
| borderColor| ColorTheme.primary500  
| disabledBorderColor| ColorTheme.black  
| loadingColor| titleColor ?? ColorTheme.black  
| loadingWidget| CircularProgressIndicator()  
| onTap|(){}  
| iconPosition| IconPosition.left  
| iconWidget| null

- **Secondary Button**

|Properties| Default Value    
|--|--  
| title| null  
| margin| EdgeInsets.symmetric(vertical: 4)  
| buttonSize| ButtonSize.fullWidth  
| borderRadius| 12  
| elevation| 1  
| isLoading| false  
| isDisabled| false  
| backgroundColor| ColorTheme.white  
| disabledBackgroundColor| ColorTheme.grey700  
| titleColor|  ColorTheme.black  
| disabledTitleColor| ColorTheme.black  
| splashColor| ColorTheme.primary500  
| disabledSplashColor| Colors.transparent  
| borderColor| ColorTheme.primary500  
| disabledBorderColor| ColorTheme.black  
| loadingColor| titleColor ?? ColorTheme.black  
| loadingWidget| CircularProgressIndicator()  
| onTap|(){}  
| iconPosition| IconPosition.left  
| iconWidget| null

- **Tertiary Button**

|Properties| Default Value    
|--|--  
| title| null  
| margin| EdgeInsets.symmetric(vertical: 4)  
| isLoading| false  
| isDisabled| false  
| titleColor|  ColorTheme.black  
| disabledTitleColor| ColorTheme.black  
| onTap|(){}

## Chip

### Chip Size

- large
- medium
- small

### Chip Properties

|Properties| Default Value    
|--|--  
| title| null  
| margin| EdgeInsets.symmetric(vertical: 4)  
| chipSize| ChipSize.medium  
| borderRadius| 12  
| elevation| 1  
| isDisabled| false  
| isUsingCloseIcon| false  
| backgroundColor|  ColorTheme.primary700  
| disabledbackgroundColor|  ColorTheme.grey700  
| titleColor|  ColorTheme.black  
| disabledTitleColor| ColorTheme.black  
| splashColor|  ColorTheme.white  
| borderColor|  ColorTheme.primary500  
| disabledBorderColor| ColorTheme.black  
| onTap|(){}  
| onTapClose|(){}  
| iconCloseWidget| Icons.close  
| iconWidget| null

## Floating Action Button

### FAB Properties

|Properties| Default Value    
|--|--  
| title| null  
| iconWidget| SizedBox()  
| isLoading| false  
| isDisabled| false  
| onTap|(){}  
| backgroundColor|  ColorTheme.primary700  
| disabledbackgroundColor|  ColorTheme.grey700  
| titleColor|  ColorTheme.black  
| disabledTitleColor| ColorTheme.black  
| loadingColor| titleColor ?? ColorTheme.black  
| elevation| 1  
| iconPosition| IconPosition.left

## Form
### Form Properties

| Properties         | Default Value    
|--------------------|--  
| margin             | null  
| hintText           | null  
| controller         | null  
| initialValue       | null  
| labelText          |null  
| obscureText        |  false  
| enabled            |  true  
| autofocus          |  false  
| readOnly           | false  
| labelPosition      | LabelPosition.left  
| maxLines           | 1  
| prefixIcon         | null  
| suffixIcon         | null  
| hintText           | null  
| textCapitalization | TextCapitalization.none  
| keyboardType       | null  
| inputFormatters    |null  
| onTap              |  null  
| onChanged          |  null  
| onFieldSubmitted   |  null  
| hintStyle          | BodyTextStyle.textStyle(  color: ColorTheme.grey700,  fontSize: StandardFontSize.bodyTextXs)  
| labelColor         | ColorTheme.black  
| disableLabelColor  | ColorTheme.grey700  
| textColor          | ColorTheme.black  
| disableTextColor   |  ColorTheme.grey700  
| focusedColor       |  ColorTheme.primary500  
| errorColor         |  ColorTheme.danger500  
| disabledColor      | ColorTheme.grey500  
| borderColor        | ColorTheme.black
| errorMaxLines      | 2
| errorStyle         | TextStyle(color: ColorTheme.danger500,fontSize: StandardFontSize.bodyTextS)

## To Do / Roadmap

**Version 1.0.0**
- [ ] More Type of Form
- [ ] Card Components
- [ ] Avatar

## Information

[Github Repo](https://github.com/serapion123321/standard-ui-core)