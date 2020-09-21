class Functions{
  work(){
    print(sum(2, 2));
    //print(sum2(1, 2, 1.123));
    print(sum3(1, 2, 3.123));
    printAll(1, 2);
    printAll2(a : 2, c : 1);
    //printAll2(1, 2, 3);     not working
    var list = [1, 2, 3, 4, 5, 6, 7, 8];
    print(list.where(filterGreatThan(3)));
    print(list.where(filterGreatThan(5)));

  }

  int sum(int a, int b) => a + b;

  int sum2(int a, int b, c) => a + b + c;

  double sum3(int a, int b, c) => a + b + c;

  //double sum(int a, int b) => a + b;        dont propagate result to double

  //sum(int a, int b, int c) => a + b + c;    overload not working

  void printAll([a, b, c = 123]){
    print("a = $a");
    print("b = $b");
    print("c = $c");
  }

  void printAll2({int a, int b, int c = 321}){
    print("a = $a");
    print("b = $b");
    print("c = $c");
  }

  Function filterGreatThan(int threshold){
    return (int a) => a > threshold;
  }

}