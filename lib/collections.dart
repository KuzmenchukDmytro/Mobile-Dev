class Collections{
  work(){
    var list = ["first", "second", "third", "fourth"];
    var emptyList = [];
    var secondList = ["qwe", "asd", ...list, ...? emptyList];
    print(secondList);
    print(secondList[1]);

    var set = {1, 2, 3};
    var set2 = {1, 2, 3, 4, 5, 6};
    var intersection = set2.intersection(set);
    print(intersection);

    var dictionary = {1 : "first", 2 : "second", 3 : "third"};
    for(var item in dictionary.keys){
      print("key = $item, value = ${dictionary[item]}");
    }
  }
}