import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'App.dart';

class Pick extends StatefulWidget {
  const Pick({Key? key}) : super(key: key);

  @override
  _PickState createState() => _PickState();
}

class _PickState extends State<Pick> {
  @override
  Widget build(BuildContext context) {

    List<Widget>topics= [
      getChip(AppColors.topics[0],0),
      getChip(AppColors.topics[1],1),
      getChip(AppColors.topics[2],2),
      getChip(AppColors.topics[3],3),
      getChip(AppColors.topics[4],4),
      getChip(AppColors.topics[5],5),
      getChip(AppColors.topics[6],6),
      getChip(AppColors.topics[7],7),
      getChip(AppColors.topics[8],8),
      getChip(AppColors.topics[9],9),
      getChip(AppColors.topics[10],10),
      getChip(AppColors.topics[11],11),
      getChip(AppColors.topics[12],12),
      getChip(AppColors.topics[13],13),
      getChip(AppColors.topics[14],14),
    ];

    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Text('Pick topics to start reading and saving news',
            style: TextStyle(fontSize: 24,fontWeight: FontWeight.w700),),
            SizedBox(height: 24,),
            Wrap(
              alignment: WrapAlignment.start,
              spacing: 12,
              runSpacing: 12,
              children: topics,
            )
          ],
        ),
      ),
    );
  }

  Widget getChip(MyTopic topic,int count){
    bool isSelected = topic.isSelected;
    return ChoiceChip(
      backgroundColor: Colors.grey[100],
      label: Text(topic.title),
      selectedColor: Colors.black,
      labelStyle: TextStyle(color: isSelected ? Colors.white : Colors.black),
      selected: isSelected,
    onSelected: (bool value){
      setState(() {
        isSelected = !isSelected;
        AppColors.topics[count].isSelected = isSelected;
      });
    },
    );
  }
}
