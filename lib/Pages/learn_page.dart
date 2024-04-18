import 'package:final_app/Pages/voc_page.dart';
import 'package:flutter/material.dart';

import '../services/set_lang.dart';


class PickLangPage extends StatefulWidget {
  const PickLangPage({super.key});

  @override
  State<PickLangPage> createState() => _PickLangState();
}

class _PickLangState extends State<PickLangPage> {
  var lang =  SetLang();

  void _changeLang(int langNum ) {
    setState(() {
      lang.setLearnLang(langNum);
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
            Text(lang.chooseLang[lang.knowLang], style: const TextStyle(fontSize: 25)),

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
                MaterialPageRoute(builder: (context) => const VocPage())), 
            child: const Text('Next'),
            ),

              const Text('Language:', style: TextStyle(fontSize: 25)),
              Text(lang.langs[lang.getLearnLang()])


          ],
        ),
      ),
    );
  }
}
