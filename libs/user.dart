import 'pieceOfPaper.dart';
import 'dart:io';
class User {
  //name of user
  String? name ;
  //user list of pieces of paper
  // it is optional to display all the pieces of paper in the list of user.
  List<PieceOfPaper> UserList = [];
  //point of user list
  int points=0;
  User(String? nameOfUser){ this.name = nameOfUser ;}
  //to ask user if he want to take another piece of paper or not .
  bool askUser(bool key) {
    String? answer;
    while (answer != 'Y' && answer != 'N'&&key) {
      print("$name, Please Enter 'Y' if you Want to take a paper or 'N' if you don't : ");
      answer = stdin.readLineSync();
    }
    answer ??= 'N';
    if(answer=='Y'){
      return true;
    }
    return false ;
  }
  //taking a paper from the mainList
  PieceOfPaper takeAPaper(List elements) {
    PieceOfPaper paper = PieceOfPaper(elements.last);
    UserList.add(paper);
    elements.removeLast();
    points += paper.points;
    displayPieceOfPaper(paper, this.name);
    displayPoints();
    return paper;
  }
  void displayPieceOfPaper(PieceOfPaper p, String? name){
    print("$name, you took a ${p.paper} Paper.");

  }
  void displayPoints(){
    print("$name'points is $points");
    print("------------------------------------");
  }

  void displayListOfPieces(){
    print("$name'pieces of paper are : ");
    this.UserList.forEach((element) {print(element);});
  }
}