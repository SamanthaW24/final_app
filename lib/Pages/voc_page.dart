import 'package:final_app/services/final_alert.dart';
import 'package:flutter/material.dart';

import '../services/answer_alert.dart';
import '../services/set_lang.dart';


class VocPage extends StatefulWidget {
  const VocPage({super.key});

  @override
  State<VocPage> createState() => _VocPageState();
}

class _VocPageState extends State<VocPage> {
  var lang =  SetLang();


  void _changeQues() {
    setState(() {
      if(quesNum == totalQuesNum){
        finshVoc(context);
      }else{ 
        quesNum++;
      }
    });
  }
  var quesNum = 1;
  var totalQuesNum = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: Text(lang.titles[lang.knowLang]),
       ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(lang.question[lang.knowLang], style: const TextStyle(fontSize: 25)),
            Text('$quesNum/$totalQuesNum', style: const TextStyle(fontSize: 20)),

            Container(
              // width: 100,
              decoration: BoxDecoration(border: Border.all()),
              child: Text(lang.vocList[lang.learnLang][quesNum-1], style: const TextStyle(fontSize: 40))),
           ElevatedButton(
            onPressed: () => showAnswer(context, quesNum), 
            child: Text(lang.answer[lang.knowLang]),
            ),

            ElevatedButton(
            onPressed: (_changeQues), 
            child: const Text('Next'),
            ),
          ],
        ),
      ),
    );
  }
}
