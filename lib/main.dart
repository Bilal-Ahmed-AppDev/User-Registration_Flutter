import 'package:flutter/material.dart';
void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context)
{
  return MaterialApp(debugShowCheckedModeBanner: false, home: UserLogin(),);
}
}
class UserLogin extends StatefulWidget{
  const UserLogin({super.key});
@override
State<UserLogin> createState()=> _UserLoginState();
}
class _UserLoginState extends State<UserLogin>{
  TextEditingController name=TextEditingController();
    TextEditingController email=TextEditingController();
      TextEditingController phoneNo=TextEditingController();
        TextEditingController password=TextEditingController();
        String gender="Male";
        bool terms=false;
@override
        void dispose()
        {
name.dispose();
email.dispose();
phoneNo.dispose();
password.dispose();
super.dispose();
        }

        void submitted()
        {
print("Name: ${name.text}");       
print("Name: ${email.text}"); 
print("Name: ${phoneNo.text}"); 
print("Name: ${password.text}");
print("Gender: ${gender}");
print("Terms Accepted:$terms ")    ;
        }

        @override
        Widget build(BuildContext context)
        {
          return Scaffold(appBar: AppBar(backgroundColor: Colors.blueGrey,title: const Text("USER LOGIN",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white,),),centerTitle: true,),
          body: SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextField(autofocus: true,
                  controller: name,
                  decoration: const InputDecoration(labelText: "Full Name",
                  border: OutlineInputBorder(),
                  ),
                ),
              const SizedBox(height: 10),
              TextField(
                controller: email,
                decoration: InputDecoration(labelText: "Email",border: OutlineInputBorder()),
              ),
              const SizedBox(height: 10),
              TextField(controller: password,
              decoration: InputDecoration(labelText: "Password",
              border: OutlineInputBorder()
              ),
              
              
              ),
              const SizedBox(height: 10),

              TextField(
                controller: phoneNo,
                decoration: InputDecoration(labelText: "Phone No",
                border: OutlineInputBorder()
                ),
              ),
              const SizedBox(height: 10),
Text("Gender",
style: TextStyle(fontSize: 18),
),
Row(children: [
  Radio(value: "Male",
  groupValue:gender,
  onChanged: (value){
    setState(() {
      gender=value!;
    });
   
  }


  ),
 const Text("Male"),
  Radio(value: "Female",
  groupValue: gender,
  onChanged: (value) {
    
   setState(() {
      gender=value!;
   });
   
  },
  ),
  const Text("Female"),
],),


              ],
            ),
          ),
          );
      
        }
}