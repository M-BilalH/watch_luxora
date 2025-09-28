
import 'package:flutter/material.dart';

Color primaryColor = Color.fromARGB(255, 60, 60, 56);
Color secondaryColor =Color.fromARGB(255, 123, 111, 101);
Color tercaryColor =   Color(0xffCCBEB1);
Color hoverColor =   Color.fromARGB(255, 83, 72, 63);

void goto(BuildContext context, Widget nextScreen) {
  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => nextScreen));
}
 Widget progressIndicator(BuildContext context) {
    return Center(
      child: Container(
        width: 80,
        height: 80,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: CircularProgressIndicator(
          backgroundColor: Colors.grey[200],
          color: primaryColor,
          strokeWidth: 7,
        ),
      ),
    );

}
dialogbox(BuildContext context,String text){
showDialog(context: context, builder: (context)=> AlertDialog(
  title: Text(text),
));
}
