import 'package:flutter/cupertino.dart';
import 'package:newfile/styles/app_text.dart';

class postitem extends StatelessWidget{
   final String user;
  const postitem({super.key, required this.user});//added my constructor

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:24,),
      child: Column(
        children: [
          Row(
              children: [
                Image.asset("assets/images/user1.jpeg",width:40,height:60),
                SizedBox(width:16),
                Text(user,style: AppText.subtitle3,),]
          ),
       SizedBox(
         height:12
       ),
       Image.asset('assets/images/post1.jpg'),
          SizedBox(
              height:12
          ),
          Text("The combo of this rainn and the bright red light of the judgement of god"),
          SizedBox(
            height:12
          )
        ],
      ),
    );

  }

}