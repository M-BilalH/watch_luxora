import 'package:flutter/material.dart';
import 'package:watch_luxora/components/primarybutton.dart';
import 'package:watch_luxora/components/textfield.dart';

class Account_Sheet extends StatelessWidget {
  const Account_Sheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.85,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Login or SignUp",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
                IconButton(onPressed: () {
                  Navigator.pop(context);
                }, icon: Icon(Icons.cancel)),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 50,
                    width: MediaQuery.of(context).size.width / 2.5,
                    child: FloatingActionButton(
                      onPressed: () {},
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
              
                      backgroundColor: Colors.grey[100],
                      child: Image.asset("assets/icons/ficon.png"),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                    width: MediaQuery.of(context).size.width / 2.5,
                    child: FloatingActionButton(
                      onPressed: () {},
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      backgroundColor: Colors.grey[100],
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset("assets/icons/gicon.png"),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text("-------- "), Text(" OR "), Text(" --------")],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: CustomTextField(hintText: "Email"),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: CustomTextField(hintText: "Password", isPassword: true),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  
                },
                child: Text(
                  "Forgot Password?",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: PrimaryButton(title: "LOGIN WITH EMAIL", onPressed: (){}),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text("-------- "), Text(" OR "), Text(" --------")],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: PrimaryButton(title: "GUEST CHECKOUT", onPressed: (){}),
            ),
            Padding(
             padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [Text("New to Luxora?",style: TextStyle(fontWeight: FontWeight.bold),), InkWell(
                    onTap: (){},
                    child: Text(" Create an Account")),],
                ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:78.0),
              child: Center(child: Text("Version : 1.0.3",style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w200
              ),)),
            )
          ],
        ),
      ),
    );
  }
}
