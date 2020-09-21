import 'package:mobile_dev/privateTest.dart';

class OOP{
  work(){
    var a = A.test(123);
    a._hidden = 123;
    var test = privateTest();

    print(C().toString());
    C().mixinWork();
  }
}

class A{
  int a;
  int _hidden;
  A();
  A.test(int a){
    this.a = a;
  }
  @override
  String toString(){
    return "a = $a";
  }
}

class B extends A{
  int b;
  B() : b = 2 {
    a = 123;
  }

  @override
  String toString(){
    return "a = $a\nb = $b";
  }
}

class MixinTest{
  mixinWork(){
    print("mixin definitely work");
  }
}

class C extends B with MixinTest{
  int c;

  @override
  String toString(){
    return "a = $a\nb = $b\nc = $c";
  }
}