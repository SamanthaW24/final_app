

class SetLang {
  static final SetLang _singleton = SetLang._internal();
  factory SetLang(){ return _singleton;}
  SetLang._internal();
  

  var knowLang = 0;
  var learnLang = 0;

  var titles = ['Learn a New Langauge','Aprender un Nuevo Lenguaje', 'Apprendre une Nouvelle Langue'];
  var pressButton = ['Pick Your Language', 'Elige Tu Idioma','Elige Tu Idioma' ];
  var chooseLang = ['Choose A Language to Learn', 'Elija un idioma para aprender','Elija un idioma para aprender'];
  var langs = ['English', 'Spanish', 'French'];
  var question = ['What is the meaning of this word?','¿Cuál es el significado de está palabra?', 'quel est le sens de ce mot?'];
  var vocList = [['Please', 'Thank you', "You're Welcome", "I'm Sorry", 'Excuse me', 'Yes', 'No', 'Hello',
               'What is your name?','Nice to meet you', 'How are you?', 'Goodbye', 'House', 'Travel', 
               "I don't understand", 'Emergency', 'Bed', 'Family', 'What is this', 'What time is it?'],

                ['Por favor', 'Gracias', "De nada", "Lo siento", 'Disculpe', 'Sí', 'No', 'Hola',
               '¿Cómo te llamas?', 'Encantado de conocerte', '¿Cómo estás?', 'Adiós', 'Casa', 'Viaje',
               "No entiendo", 'Emergencia', 'Cama', 'Familia', '¿Qué es esto', '¿Qué hora es?'],

                ["S'il vous plaît", "Merci", "De rien", "Je suis désolé", "Excusez-moi", "Oui", "Non", "Bonjour",
               "Quel est votre nom ? ", "Enchanté de vous rencontrer ", " Comment allez-vous ? ", "Au revoir ", " Maison ", " Voyage ",
               "Je ne comprends pas", "Urgence", "Lit", "Famille", "Qu'est-ce que c'est", "Quelle heure est-il ?"]];
  var answer = ['Answer', 'Respuesta', 'Répondre'];
  var accept = ['ok','ok',"d'accord"];
  var finsh = ['finshed','El Final', 'Fini'];
  var doneQues = ['Do you want to do this set again or choose a different language?',
                  '¿Quieres volver a hacer esta serie o elegir un idioma diferente?',
                   "Voulez-vous refaire cet ensemble ou choisir une autre langue ?"];
  var redo = ['Do Again','hazlo otra vez','refaire'];
  var newLang = ['New Language','nuevo idioma','nouveau langage'];

  setKnowLang(int newLang){
    knowLang = newLang;
  }
  setLearnLang(int newLang){
    learnLang = newLang;
  }
  int getKnowLang(){
    return knowLang;
  }
  int getLearnLang(){
    return learnLang;
  }
  String getTitle(){
    return titles[getKnowLang()];
  }

}