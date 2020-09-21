class Operators {
  static void work(){
    print("*************  Arithmetic Operators  *************\n\n");
    print("12 + 5 = ${12 + 5}");
    print("12 - 5 = ${12 - 5}");
    print("-(12 + 5) = ${-(12 + 5)}");
    print("12 / 5 = ${12 / 5}");
    print("12 * 5 = ${12 * 5}");
    print("12 ~/ 5 = ${12 ~/ 5}");
    print("12 % 5 = ${12 % 5}");
    //print("--(12 + 5) = ${--(12 + 5)}");
    //print("++(12 + 5) = ${++(12 + 5)}");
    var test = 5;
    test = --test;
    print("\n**************************************************\n\n\n");

    print("*************  Equality and Relational Operators  *************\n\n");
    var a = 10;
    var b = 15;
    print("a = 10, b = 15");
    print("a > b - ${a > b}");
    print("a < b - ${a < b}");
    print("a >= b - ${a >= b}");
    print("a <= b - ${a <= b}");
    print("a == b - ${a == b}");
    print("a != b - ${a != b}");
    print("\n**************************************************\n\n\n");

    print("*************  Type test Operators  *************\n\n");
    print("\"test\" is String - ${"test" is String}");
    print("\"test\" is! String - ${"test" is! String}");
    print("\n**************************************************\n\n\n");

    print("*************  Bitwise Operators  *************\n\n");
    print("0xFF & 0x00 = ${0xFF & 0x00}");
    print("0xFF | 0x00 = ${0xFF | 0x00}");
    print("0xFF ^ 0x0F = ${0xFF ^ 0x0F}");
    print("~0x00 = ${~0x00}");
    print("0x02 >> 2 = ${0x02 >> 2}");
    print("0x02 << 2 = ${0x02 << 2}");
    print("\n**************************************************\n\n\n");

    print("*************  Assignment Operators  *************\n\n");
    int c;
    print("c = $c");
    c ??= 3;
    print("c ??= 3 => c = $c");
    c ??= 10;
    print("c ??= 10 => c = $c");
    c += 33;
    print("c += 33 => c = $c");
    c -= 5;
    print("c -= 5 => c = $c");
    c *= 2;
    print("c *= 2 => c = $c");
    print("\n**************************************************\n\n\n");

    print("*************  Logical Operators  *************\n\n");
    print("true && false = ${true && false}");
    print("true || false = ${false || true}");
    print("!(false || true) = ${!(false || true)}");
    print("\n**************************************************\n\n\n");

    print("*************  Conditional Expressions  *************\n\n");
    int d, e;
    d = 2 > 3 ? 1 : 2;
    print("d = 2 > 3 ? 1 : 2 => d = $d");
    d = e ?? 1234;
    print("d = e ?? 1234 => d = $d");
    print("\n**************************************************\n\n\n");
  }
}