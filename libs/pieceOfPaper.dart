class PieceOfPaper{
  int points =0 ;
  String? paper ;
  PieceOfPaper(String? StringPaper){
    this.paper= StringPaper;
    pointsOfPaper();
  }
  int pointsOfPaper(){
    String? sample ;
    sample  = paper![0]+paper![1];
    if(sample=='10'){
      this.points+=10;
    }
    else{
      sample = paper![0];
      if(sample == 'L'){
        points += 11;
      }else if(sample == 'Q'){
        points += 12;
      }else if(sample == 'K'){
        points += 13;
      }else{
        int? tot = int.tryParse(sample);
        tot??= 0 ;
        points+=tot;
      }
    }
    return points ;
  }
}