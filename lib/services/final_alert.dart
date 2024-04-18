import 'package:final_app/Pages/learn_page.dart';
import 'package:final_app/Pages/voc_page.dart';
import 'package:final_app/services/set_lang.dart';
import 'package:flutter/material.dart';

finshVoc(BuildContext context) {
  var lang = SetLang();

  // set up the buttons
  Widget reDoButton = TextButton(
    child: Text(lang.redo[lang.knowLang]),
    onPressed: () => Navigator.push(
                context, 
                MaterialPageRoute(builder: (context) => const VocPage())),
  );
  Widget newLangButton = TextButton(
    child: Text(lang.newLang[lang.knowLang]),
    onPressed:  () => Navigator.push(
                context, 
                MaterialPageRoute(builder: (context) => const PickLangPage())),
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text(lang.finsh[lang.knowLang]),
    content: Text(lang.doneQues[lang.knowLang]),
    actions: [
      reDoButton,
      newLangButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}