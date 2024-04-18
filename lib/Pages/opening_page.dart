import 'package:final_app/Pages/learn_page.dart';
import 'package:flutter/material.dart';

import '../services/set_lang.dart';


class OpeningPage extends StatefulWidget {
  const OpeningPage({super.key});

  @override
  State<OpeningPage> createState() => _OpeningPageState();
}

class _OpeningPageState extends State<OpeningPage> {
  var lang =  SetLang();

  void _changeLang(int langNum ) {
    setState(() {
      lang.setKnowLang(langNum);
    });
  }

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
            Text(lang.pressButton[lang.knowLang], style: const TextStyle(fontSize: 25)),

            ElevatedButton(
            onPressed: () => _changeLang(0), 
            child: const Text('English'),
            ),

            ElevatedButton(
            onPressed: () => _changeLang(1), 
            child: const Text('Español'),
            ),

            ElevatedButton(
            onPressed: () => _changeLang(2), 
            child: const Text('Français'),
            ),

            ElevatedButton(
            onPressed: () => Navigator.push(
                context, 
                MaterialPageRoute(builder: (context) => const PickLangPage())), 
            child: const Text('Next'),
            ),

              const Text('Language:'),
              Text(lang.langs[lang.getKnowLang()])

          ],
        ),
      ),
    );
  }
}
