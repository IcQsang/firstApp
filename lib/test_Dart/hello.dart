import 'dart:io';
import 'dart:math';
void main(){
  const maxrandom = 100;
  var rng = new Random();
  var point = rng.nextInt(maxrandom)+1;
  print(point);
  print("           🦄guess the number🦄");
  print("﹏﹏﹏﹏﹏﹏﹏﹏﹏﹏﹏﹏﹏﹏﹏﹏﹏﹏﹏﹏﹏");

  for(int i =0;;) {
    stdout.write("guess number between 1 - $maxrandom :");
     var x = stdin.readLineSync();
    if(x != "" && int.tryParse(x!) != null){
      ++i;
      int d =int.parse(x!);
      if(d > point){
        print("$x is Too High ↑");
      }
      else if(d < point){
        print("$x is Too Low ↓");
      }
      else {
        print("$point is Correct !!! .total guess $i time");
        break;
      }
    }
  }print("﹏﹏﹏﹏﹏﹏﹏﹏﹏﹏﹏﹏﹏﹏﹏﹏﹏﹏﹏﹏﹏");
  print("           ✌the end✌");
  print("﹏﹏﹏﹏﹏﹏﹏﹏﹏﹏﹏﹏﹏﹏﹏﹏﹏﹏﹏﹏﹏");
}