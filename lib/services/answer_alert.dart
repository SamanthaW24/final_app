import 'package:final_app/services/set_lang.dart';
import 'package:flutter/material.dart';

showAnswer(BuildContext context, int quesNum) {

  var lang =  SetLang();
  // set up the button
  Widget okButton = TextButton(
    child: Text(lang.accept[lang.knowLang]),
    onPressed: () {
      Navigator.of(context).pop();},
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text(lang.answer[lang.knowLang]),
    content: Text(lang.vocList[lang.knowLang][quesNum-1]),
    actions: [
      okButton,
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