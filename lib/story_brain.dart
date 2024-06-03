import 'story.dart';

class storyBrain{

  List<story> _storydata = [
       story(title: 'Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: "Need a ride, boy?".',
            choice1: 'I\'ll hop in. Thanks for the help!',
            choice2 :'Better ask him if he\'s a murderer first.'),
       story(title: 'He nods slowly, unphased by the question.' ,
           choice1: 'At least he\'s honest. I\'ll climb in.',
           choice2: 'Wait, I know how to change a tire.'),
       story(title: 'As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box.',
           choice1: 'I love Elton John! Hand him the cassette tape.',
           choice2: 'It\'s him or me! You take the knife and stab him.'),
       story(title: 'What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?',
           choice1: 'Restart',
           choice2: ''),
  ];

     String getstory(){
       return _storydata[_storynumber].title;
     }
     String getchoice1(){
       return _storydata[_storynumber].choice1;
     }
     String getchoice2(){
       return _storydata[_storynumber].choice2;
     }

     int _storynumber = 0;

     void nextstory(int urchoice)
     {
       if (_storynumber == 1 && _storynumber == 0) {
         _storynumber = 2;
       } else if (urchoice == 2 && _storynumber == 0) {
         _storynumber = 1;
       } else if (urchoice == 1 && _storynumber == 1) {
         _storynumber = 2;
       } else if (urchoice == 2 && _storynumber == 1) {
         _storynumber = 3;
       } else if (urchoice == 1 && _storynumber == 2) {
         _storynumber = 5;
       } else if (urchoice == 2 && _storynumber == 2) {
         _storynumber = 4;
       }
       else if(_storynumber == 3  || _storynumber== 4 || _storynumber == 5){
         restart();
       }
     }

     void restart(){
       _storynumber = 0;
     }

     bool buttonvisible() {
       if(_storynumber==0 || _storynumber==1 || _storynumber==2){
         return true;
       }
       else{
         return false;
       }
     }
}


