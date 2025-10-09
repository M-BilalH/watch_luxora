import 'package:flutter/material.dart';
import 'package:watch_luxora/components/constants.dart';


// ignore: must_be_immutable
class PrimaryButton extends StatelessWidget {
  // const PrimaryButton({super.key});
final String title;
final Function onPressed;
bool loading;
PrimaryButton({super.key, required this.title,required this.onPressed,this.loading=false});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: double.infinity,
      child: ElevatedButton(onPressed: (){
        onPressed();
      }, 
      style: ElevatedButton.styleFrom(
        backgroundColor: primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        )
      ),
      child: Text(title,style: TextStyle(
        fontSize: 15,
        color: Colors.white,
        fontWeight: FontWeight.bold
      ),),
      ),
    );
  }
}