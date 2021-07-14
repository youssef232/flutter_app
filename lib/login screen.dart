import 'package:flutter/material.dart';
var emailController = TextEditingController() ;
var passwordController = TextEditingController() ;
class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar() ,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(

              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Login ",

                style: TextStyle(
                color: Colors.blue,
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),),
                SizedBox(height: 50,) ,
                TextFormField(
                controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  onFieldSubmitted: (value){
                    print(value);
                  } ,
                  onChanged: (value){
                    print(value);
                  },
                    decoration: InputDecoration(prefixIcon: Icon(Icons.email),
                      labelText:"Email Address",
                      border: OutlineInputBorder(),

                    ),
                ),
                SizedBox(height: 20,),
                TextFormField(
                  controller: passwordController,
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,

                    decoration: InputDecoration(prefixIcon: Icon(Icons.lock),
                      labelText:"Password",
                      border: OutlineInputBorder(),
                      suffixIcon: Icon(Icons.remove_red_eye),


                    ),
                ),
                SizedBox(
                  height: 15 ,
                ),
                Container(
                  color: Colors.blue,
                  width: double.infinity,
                  child: MaterialButton(
                      onPressed: (){},
                      child: Text("Login",
                      style: TextStyle(fontSize: 20,
                      color: Colors.white,),),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center  ,
                  children: [
                    SizedBox(
                      height: 30
                      ,
                    ),
                    Text("Don't have an account? ", style: TextStyle(fontSize: 16),),
                    TextButton(onPressed: (){},
                      child: Text("sign up",style: TextStyle(fontSize: 16),),
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
