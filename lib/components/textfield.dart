import 'package:flutter/material.dart';
import 'package:watch_luxora/components/constants.dart';


class CustomTextField extends StatelessWidget {
  // const CustomTextField({super.key});
final String? hintText;
final TextEditingController? controller;
final String? Function(String?)? validate;
final String? Function(String?)? onsave;
final int? maxline;
final bool isPassword;
final bool enable;
final bool? check;
final TextInputType? keyboardtype;
final TextInputAction? textInputAction;
final FocusNode? focusNode;
final Widget? prefix;
final Widget? suffix;
const CustomTextField({super.key, this.controller,this.check,this.enable=true,this.focusNode,this.hintText,this.isPassword=false,this.keyboardtype
,this.maxline,this.onsave,this.prefix,this.suffix,this.textInputAction,this.validate});
@override
  Widget build(BuildContext context) {
    return TextFormField(
      enabled: enable==true?true:enable,
      maxLines:maxline ?? 1,
      onSaved: onsave,
      focusNode: focusNode,
      textInputAction: textInputAction,
      keyboardType: keyboardtype ?? TextInputType.name,
      controller: controller,
      validator: validate,
      obscureText: isPassword==false ? false : isPassword,
  
      decoration: InputDecoration(
        prefixIcon: prefix,
        suffixIcon: suffix,
        fillColor: Colors.grey[200],
        filled: true,
        labelText: hintText??"hint text....",
        labelStyle: TextStyle(
          color: Colors.grey
        ),
         focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide:  BorderSide(
            style: BorderStyle.solid,
            color: secondaryColor,
          )
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide:  BorderSide(
            style: BorderStyle.solid,
            color: Color.fromARGB(0, 255, 255, 255),
          )
        ),
       
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide:  BorderSide(
            style: BorderStyle.solid,
           color: Theme.of(context).primaryColor
          )
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide:  BorderSide(
            style: BorderStyle.solid,
           color: Colors.red,
          )
        )
      ),
    );
  }
}