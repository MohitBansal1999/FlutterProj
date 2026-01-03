import 'dart:io';

void main(){
  //sayHello();
  //variable();
  //var a = Human(88);
  //Human().pp();
  //a.printname("mohit");
  //print(a.Add(4, 5));
  //list();
  //map();
  // finalAndConst();
  // if_else();
  //loop();
}

void sayHello(){    //func declaration
  print("Welcome to first code");     //func definition
  stdout.write("Enter your name: ");
  var name = stdin.readLineSync();
  print("Welcome $name");
}
void variable(){
  int a=5;
  BigInt b=BigInt.parse('99999999999999999999999999999999999999999');
  double c = 99.7;
  num x=11;//both int and double
  num y=11.11;
  bool f=true;
  var abc = "String";//any type
  String def = "String";
  //print(b);
  print(def.length);

  dynamic xyz; //dynamic type
  xyz = 55;
  xyz = "sss";
  xyz = true;
}
class Human{
  int? a=44;
  pp(){
    print(a);
  }
  // Human(){      //default constructor
  //   print("Human Class object created");
  // }
  Human(int n){     //parameterised constructor / unnamed constructor
    this.a = n;
  }

  void printname(String name){
    print(name);
  }
  int Add(int a, int b){
    return a+b;
  }

}
void list(){
  var listNames = [10,20,30,40];
  listNames.add(50); //[10, 20, 30, 40, 50] last me 50 added
  var list2 = [1,2,3];
  listNames.addAll(list2); //[10, 20, 30, 40, 1, 2, 3] new list added at last
  listNames.insert(1, 100);  //[10, 100, 20, 30, 40] value 100 added at index 1
  listNames.insertAll(1, list2); //[10, 1, 2, 3, 100, 20, 30, 40] list2 added at index 1

  listNames[0]=99; //[99, 20, 30, 40] (update value at index 0)

  listNames.replaceRange(1, 3, [11,12]); //index 1 se 3 tk ka replace kiya [11,12] se

  listNames.removeAt(2); //index 2 ka data remove
  listNames.removeLast(); //last index data remove;
  listNames.remove(100);  //value 100 ko remove krega
  print(listNames);
  
  print("length : ${listNames.length}");
  print("first : ${listNames.first}");
  print("last : ${listNames.last}");
  print("reversed : ${listNames.reversed}");
  print("isEmpty : ${listNames.isEmpty}");
  print("isNotEmpty : ${listNames.isNotEmpty}");
  print("elementAt : ${listNames.elementAt(3)}"); //print element at index 3

}
void map(){
  var map_name = {
    'k1':'v1',
    'k2':33,
    'k3':43.45,
    'k4':true
  };
  //OR
  var map_name2 = Map(); //shuru me agr values nhi deni ho
  map_name2['k1']='v1';
  map_name2['k2']=33;

  print(map_name['k1']);

  map_name['k1'] = 'mohit'; //v1 ko override krke mohit kr dega

  print(map_name.isNotEmpty);
  print(map_name.isEmpty);
  print(map_name.length);
  print(map_name.containsKey('k3')); //k3 key h kya
  print(map_name.containsValue(32)); //32 value h kya
  print(map_name.remove('k3')); //k4 key-value pair remove ho jayega aur value return krega
  print(map_name.toString());
  print(map_name.keys);
  print(map_name.values);
}
void finalAndConst(){
  final num1 = ['a','b'];
  final num2;
  num2 = ['c','d'];

  num1.addAll(num2);

  const numm = ['A','B'];
}
void if_else(){
  var a=20;
  if(a>20 && a==35){}
  else if(a==20 || a!=40){}
  else{}
}
void loop(){
  for(int i=1 ; i<=10 ; i++){
    print(i);
  }

  var j=1;
  while(j<=10){
    print(j);
    j++;
  }

  var k=1;
  do{
  print(k);
  k++;
  }while(k<=10);
}
