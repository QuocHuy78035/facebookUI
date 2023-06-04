import 'package:flutter/material.dart';

class Story extends StatelessWidget {
  final String? linkStoryAvt;
  final String? linkStory01;
  final String? linkStory02;
  final String? linkStory03;

  const Story({
    Key? key,
    this.linkStoryAvt,
    this.linkStory01,
    this.linkStory02,
    this.linkStory03,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return SizedBox(
     height: 160,
     child: ListView.builder(
       scrollDirection: Axis.horizontal,
       itemCount: 4,
       itemBuilder: (context, index) {
         List<String> imagePaths = [
           '$linkStoryAvt',
           '$linkStory01',
           '$linkStory02',
           '$linkStory03',
         ];
         return Row(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Image.asset(imagePaths[index]),
             const SizedBox(
               width: 10,
             ),
           ],
         );
       },
     ),
   );
  }
}
