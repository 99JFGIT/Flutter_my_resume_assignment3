
import 'package:flutter/material.dart';
import 'package:flutter_my_resume_assignment3/education_details_page.dart';
import 'package:flutter_my_resume_assignment3/experience_details_page.dart';
import 'package:flutter_my_resume_assignment3/personal_info_details_page.dart';
import 'package:flutter_my_resume_assignment3/skills_details_page.dart';
import 'package:fluttertoast/fluttertoast.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo.shade200,
        title: Text("Jannatul Ferdous's Resume",style: TextStyle(color: Colors.blueAccent)),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[

            Center(
              child: Padding(
                padding:const EdgeInsets.all(30),
                child: Image.asset("assets/images/dd.jpeg"),
              ),
            ),

            Padding(
              padding:const EdgeInsets.all(5),
                child: Text("Jannatul Ferdous", style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.blueAccent),),
            ),


            Padding(
              padding:const EdgeInsets.all(0),
                child: Text(" Phone: +8801827687554 ",style: TextStyle(fontSize: 18,color: Colors.blueAccent.shade200)),
            ),

            Padding(
              padding:const EdgeInsets.all(0),
              child: Text(" Email: ferdous@gmail.com ",style: TextStyle(fontSize: 14,color: Colors.blueAccent.shade100),),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 20, left: 5.15, right: 5.15, bottom: 5.15),
              child: SizedBox(
                width: 200,
                height: 40,
                child: ElevatedButton(
                  onPressed: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>PersonalInfoDetailsPage()));
                    Fluttertoast.showToast(msg: "Going To Personal Info Details Page");
                },
                child: Text("Personal Info",style: TextStyle(
                    fontSize: 20,fontWeight: FontWeight.normal,
                    color: Colors.blueGrey
                ),),)),
            ),

            Padding(
              padding: const EdgeInsets.all(5.10),
              child: SizedBox(
                width: 200,
                height: 40,
                child: ElevatedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>SkillsDetailsPage()));
                  Fluttertoast.showToast(msg: "Going To Skills Details Page");
                },
                child: Text("Skills",style: TextStyle(
                    fontSize: 20,fontWeight: FontWeight.normal,
                    color: Colors.blueGrey
                ),),)),
          ),

            Padding(
              padding: const EdgeInsets.all(5.10),
              child: SizedBox(
                  width: 200,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>EducationDetailsPage()));
                    Fluttertoast.showToast(msg: "Going To Education Details Page");
                    },
                  child: Text("Education",style: TextStyle(
                    fontSize: 20,fontWeight: FontWeight.normal,
                    color: Colors.blueGrey
                ),),)),
          ),


            Padding(
              padding: const EdgeInsets.all(5.10),
              child: SizedBox(
                  width: 200,
                  height: 40,
                  child:ElevatedButton(
                    onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>ExperienceDetailsPage()));
                    Fluttertoast.showToast(msg: "Going To Experience Details Page");
                  },

                child: Text("Experience",style: TextStyle(
                    fontSize: 20,fontWeight: FontWeight.normal,
                    color: Colors.blueGrey
                ),),)),
          ),
          ],
        ),
      ),
    );
  }
}
