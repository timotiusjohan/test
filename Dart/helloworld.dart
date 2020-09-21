void main() {
  //Hello World
  print("Hello World\n");

  //Print a variable
  print("Print a variable");
  int n = 24;
  print(n);

  //Function in dart for single expression
  print("Function in dart for single expression");
  twice(x) => x * 2;
  print(twice(2));

  //Traditional function
  print("Traditional function");
  twice2(x) {
    return x * 2;
  }

  print(twice2(4));

  //IF Statement
  print("IF Statement");
  max(x, y) {
    if (x > y) {
      return x;
    } else {
      return y;
    }
  }

  print(max(5, 4));
  print(max(2, 8));

  //Another IF statement
  print("Another IF Statement");
  min(x, y) => (x < y) ? x : y;
  print(min(5, 4));
  print(min(2, 8));

  //Ambitious function of IF statement + Exception
  print("Ambitious function of IF Statement + Exception");
  maxElement(a) {
    var currentMax =
        a.isEmpty ? throw "Maximal element undefined for empty array" : a[0];
    for (var i = 1; i < a.length; i++) {
      currentMax = max(a[i], currentMax);
    }
    return currentMax;
  }

  var a = [1, 2, 3];
  var b = new List();
  var c = [9, 10, 2, 3, 4, 6, 99, 100];
  print(maxElement(a));
  print(maxElement(c));
  print(maxElement(b));
  print(maxElement(c)); // tidak ditampilkan, baris sebelumnya ada exception
}
