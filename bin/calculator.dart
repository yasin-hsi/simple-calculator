import 'dart:io';

void addition() {
  print('\nPenambahan - Masukkan bilangan pertama');
  int? first = int.parse(stdin.readLineSync()!);
  print('Penambahan - Masukkan bilangan kedua');
  int? second = int.parse(stdin.readLineSync()!);
  int hasil = first + second;
  print('Hasil = $hasil');
}

void multiply() {
  print('\Perkalian - Masukkan bilangan pertama');
  int? first = int.parse(stdin.readLineSync()!);
  print('Perkalian - Masukkan bilangan kedua');
  int? second = int.parse(stdin.readLineSync()!);
  int hasil = first * second;
  print('Hasil = $hasil');
}

int factorialRecusive(int value) {
  if (value != 1) {
    return value * factorialRecusive(value - 1);
  }
  return value;
}

void factorial() {
  print('\Hitung faktorial - Masukkan bilangan');
  int? number = int.parse(stdin.readLineSync()!);
  int hasil = factorialRecusive(number);
  print('Hasil = $hasil');
}

void triangle() {
  print('\Hitung luas segitiga sama sisi - Masukkan nilai alas');
  int? alas = int.parse(stdin.readLineSync()!);
  print('\Hitung luas segitiga sama sisi - Masukkan nilai tinggi');
  int? tinggi = int.parse(stdin.readLineSync()!);
  int hasil = (alas * tinggi) ~/ 2;
  print('Hasil = $hasil');
}

void main() {
  print('Kalkulator HSI Sandbox - Yasin');

  // Input NIP
  print('\nMasukkan nomor NIP Anda');
  String? nip = stdin.readLineSync();
  print('NIP: $nip');

  // Input selected menu
  print('\nMenu tersedia:');
  print('1. Penambahan');
  print('2. Perkalian');
  print('3. Hitung faktorial');
  print('4. Hitung luas segitiga sama sisi');
  print('\nPilihan Anda? (1-4)');
  int? selectedMenu = int.parse(stdin.readLineSync()!);

  switch (selectedMenu) {
    case 1:
      addition();
      break;
    case 2:
      multiply();
      break;
    case 3:
      factorial();
      break;
    case 4:
      triangle();
      break;
    default:
      print('Pilihan tidak tersedia');
  }
}
