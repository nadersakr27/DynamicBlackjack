//prepare an user
import 'user.dart';
//prepare paper
import 'paper.dart';

class GameLimitOfPoints {
  bool _keyOfFinish = true;
  int? _limitOfPoints;
  Paper _paper = Paper();
  User _user1 = User("Nader");
  User _user2 = User("Ahmed");
  GameLimitOfPoints(User user1 , User user2,int limitOfPoints){
    this._limitOfPoints=limitOfPoints;
    this._user1=user1;
    this._user2=user2;
    run();
  }
  void displayTheWinnerAndTheLoser(User winner,User loser){
    print("${winner.name} has ${winner.points} points");
    print("${loser.name} has ${loser.points} points");
    print("${winner.name} is the winner.");
    print("${loser.name} is the loser.");
    _keyOfFinish = false;
    return ;
  }
  void _askToPlay(User user1 , User user2){
    while(user1.askUser(_keyOfFinish)){
      user1.takeAPaper(_paper.mainPaperList);
      if(user1.points>_limitOfPoints!){
        displayTheWinnerAndTheLoser(user2, user1);
      }else if (user1.points==_limitOfPoints){
        displayTheWinnerAndTheLoser(user1, user2);
      }
    }
    print("------------------------------------");
  }
  void _judged(User user1,User user2){
    if(user1.points==user2.points){
      print("It's a Deal");
    }else if (user1.points>user2.points){
      displayTheWinnerAndTheLoser(user1, user2);
    }else{
      displayTheWinnerAndTheLoser(user2, user1);
    }
  }
  void run(){
    _user1.takeAPaper(_paper.mainPaperList);
    _user2.takeAPaper(_paper.mainPaperList);
    _askToPlay(_user1, _user2);
    if(!_keyOfFinish){
      return;
    }
    _user2.displayPoints();
    _askToPlay(_user2, _user1);
    if(!_keyOfFinish){
      return;
    }
    _judged(_user1, _user2);
  }
}