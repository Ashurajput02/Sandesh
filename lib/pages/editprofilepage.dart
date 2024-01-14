import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:newfile/components/textfieldforusername.dart';
import 'package:newfile/components/toolbar.dart';
import 'package:newfile/components/useravatar.dart';
import 'package:newfile/styles/app_colors.dart';
enum editor{
  save
}
enum gender{
  none,
  male,
  female,
  other
}
class editprofilepage extends StatefulWidget {
  editprofilepage({super.key});

  @override
  State<editprofilepage> createState() => _editprofilepageState();
}

class _editprofilepageState extends State<editprofilepage> {
  var Gender=gender.none;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: ashbar(title: "EditProfile",
            actions: [PopupMenuButton<editor>(onSelected: (value) {
              switch (value) {
                case editor.save:
                  print("save button clicked");
                  break;
                default:
                  print("baawla hogya ke");
              }
            }, itemBuilder: (context) {
              return [
                PopupMenuItem(child: Text("SAVE"), value: editor.save),
              ];
            })
            ]),
    body:Padding(
      padding: const EdgeInsets.only(left:24.0,right:24,bottom: 24),
      child: SingleChildScrollView(
        child: Column(
           //mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          children:[
            Stack(children:[
                  useravatar(size:100),
            Positioned(bottom: 0,right: 0,child:Container(
              width:28,
              height: 28,
              padding: const EdgeInsets.all(0),
              decoration: BoxDecoration(
                color:AppColors.primary,
                borderRadius: BorderRadius.all(Radius.circular(6)),
              ),
              child: Positioned(
                bottom: 0,
                left:0,
                right:0,
                top:0,
                child: IconButton(onPressed: (){
                    print ("Edit profile pic button clicked");
                  }, icon: Icon(Icons.edit,color: Colors.black,size:20)),
              ),
              ),
            )],
            ),
        SizedBox(
          height:8
        ),

        textfieldforusername(hint:"FIRST NAME"),
            SizedBox(
                height:8
            ),

            textfieldforusername(hint:"LAST NAME"),
            SizedBox(
                height:8
            ),
            textfieldforusername(hint:"PHONE NUMBER") ,
            SizedBox(
                height:8
            ),
            textfieldforusername(hint:"LOCATION"),
            SizedBox(
                height:8
            ),
            textfieldforusername(hint:"BIRTH DATE"),
            SizedBox(
                height:12
            ),
            Row(
              children: [
                Expanded(
                  child: RadioListTile(
                      title:Text("Male"),
                      contentPadding: EdgeInsets.zero,
                      activeColor:Colors.black,value: gender.male, groupValue: Gender, onChanged: (value){
                    setState(() {
                      Gender=gender.male;
                    });
                  }),
                ),
                Expanded(child:
                RadioListTile(//iska use karke apan kahin bhi click karein voh poora hi select hoga
                    title:Text("Female"),

                    contentPadding: EdgeInsets.zero,
                    activeColor:Colors.black,
                    value: gender.female, groupValue: Gender, onChanged: (value){
                  setState(() {
                    Gender=gender.female;
                  });
                })),
                Expanded(
                  child: RadioListTile(
                  title:Text("Other"),

                      contentPadding: EdgeInsets.zero,
                      activeColor:Colors.black,
                  value: gender.other, groupValue: Gender, onChanged: (value){
                    setState(() {
                      Gender=gender.other;
                    });
                  }),
                ),
              ],
            ),
            ElevatedButton(onPressed: (){
            print("Save button clicked");
            Navigator.pushReplacementNamed(context, '/profilepage');
          }, child: Text("SAVE"))]
        ),
      ),
    ));

  }
}