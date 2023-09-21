//NOMOR 4
//Menyimpan dalam Variabel
int Function(int, int) add = (int a, int b) {
  return a + b;
};

//Menggunakan sebagai Argumen
int performOperation(int x, int y, int Function(int, int) operation) {
  return operation(x, y);
}

//Mengembalikan sebagai Nilai
int Function(int) multiplyBy(int factor) {
  int Function(int) multiplier = (int x) {
    return x * factor;
  };
  return multiplier;
}

//Digunakan dalam Struktur Data
List<int Function(int, int)> operations = [
  (int a, int b) => a + b,
  (int a, int b) => a - b,
];

//NOMOR 3
//Positional Parameters
void printInfo(String name, int age) {
  print("Nama: $name, Umur: $age tahun");
}

// Memanggil fungsi dengan positional parameters
printInfo("Alice", 30);

//Named Parameters
void printInfo({String name, int age}) {
  print("Nama: $name, Umur: $age tahun");
}

// Memanggil fungsi dengan named parameters
printInfo(name: "Bob", age: 25);

//Default Parameters
void printInfo({String name = "Unknown", int age = 0}) {
  print("Nama: $name, Umur: $age tahun");
}

// Memanggil fungsi tanpa menyediakan nilai untuk parameter name dan age
printInfo(); // Output: Nama: Unknown, Umur: 0 tahun

//Required Parameters
void printInfo({required String name, required int age}) {
  print("Nama: $name, Umur: $age tahun");
}

// Memanggil fungsi dengan required parameters
printInfo(name: "Charlie", age: 35);

//Rest Parameters 
void printNames(String first, String second, String third, [String... restNames]) {
  print("Nama Pertama: $first");
  print("Nama Kedua: $second");
  print("Nama Ketiga: $third");
  print("Nama Lainnya: $restNames");
}

// Memanggil fungsi dengan rest parameters
printNames("Alice", "Bob", "Charlie", "David", "Eve");

//NOMOR 5
//Anonymous Functions Tanpa Parameter
// Menggunakan anonymous function untuk mencetak pesan
var greet = () {
  print("Hello, World!");
};

// Memanggil anonymous function
greet(); // Output: Hello, World!

//Anonymous Functions dengan Parameter
// Menggunakan anonymous function untuk menjumlahkan dua angka
var add = (int a, int b) {
  return a + b;
};

// Memanggil anonymous function
var result = add(5, 3); // result akan berisi 8


//NOMOR 6
//Lexical Scope
function outer() {
  var x = 10; // Variabel x hanya dapat diakses dalam fungsi outer

  function inner() {
    console.log(x); // Variabel x dapat diakses dalam fungsi inner karena inner bersarang dalam outer
  }

  inner();
}

outer();

//Lexical Closures
function outer() {
  var x = 10;

  function inner() {
    console.log(x);
  }

  return inner; // Mengembalikan fungsi inner
}

var closureFn = outer(); // Memanggil outer dan menyimpan hasilnya dalam closureFn
closureFn(); // Memanggil fungsi inner yang menyimpan nilai x dari lingkup leksikal outer

//NOMOR 7
//Menggunakan List
List<int> getCoordinates() {
  int x = 5;
  int y = 10;
  return [x, y];
}

void main() {
  var coordinates = getCoordinates();
  int x = coordinates[0];
  int y = coordinates[1];
  print("Koordinat x: $x, Koordinat y: $y");
}
//Menggunakan map
Map<String, int> getCoordinates() {
  int x = 5;
  int y = 10;
  return {'x': x, 'y': y};
}

void main() {
  var coordinates = getCoordinates();
  int x = coordinates['x'];
  int y = coordinates['y'];
  print("Koordinat x: $x, Koordinat y: $y");
}

//Menggunakan objek khusus
class Coordinates {
  int x;
  int y;

  Coordinates(this.x, this.y);
}

Coordinates getCoordinates() {
  int x = 5;
  int y = 10;
  return Coordinates(x, y);
}

void main() {
  var coordinates = getCoordinates();
  int x = coordinates.x;
  int y = coordinates.y;
  print("Koordinat x: $x, Koordinat y: $y");
}




