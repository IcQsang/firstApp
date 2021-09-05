void main(){
  var x = Hello("flutter");
  x.sayHi();


}

class Hello{
  String text;
  Hello(this.text);
  void sayHi(){
    print("Hi ${text.toUpperCase()}");
  }
}