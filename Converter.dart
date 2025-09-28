import 'dart:io';

void decimalToBinary(int n) {
  print("Binary: ${n.toRadixString(2)}");
}

void decimalToOctal(int n) {
  print("Octal: ${n.toRadixString(8)}");
}

void decimalToHex(int n) {
  print("Hexadecimal: ${n.toRadixString(16).toUpperCase()}");
}

int binaryToDecimal(String b) {
  return int.parse(b, radix: 2);
}

int octalToDecimal(String o) {
  return int.parse(o, radix: 8);
}

int hexToDecimal(String h) {
  return int.parse(h, radix: 16);
}

void main() {
  while (true) {
    print("\n===== Number System Converter =====");
    print("1. Decimal to Binary");
    print("2. Decimal to Octal");
    print("3. Decimal to Hexadecimal");
    print("4. Binary to Decimal");
    print("5. Octal to Decimal");
    print("6. Hexadecimal to Decimal");
    print("7. Exit");
    stdout.write("Enter choice: ");
    int? choice = int.tryParse(stdin.readLineSync() ?? '');

    switch (choice) {
      case 1:
        stdout.write("Enter a Decimal number: ");
        int num = int.parse(stdin.readLineSync()!);
        decimalToBinary(num);
        break;
      case 2:
        stdout.write("Enter a Decimal number: ");
        int num = int.parse(stdin.readLineSync()!);
        decimalToOctal(num);
        break;
      case 3:
        stdout.write("Enter a Decimal number: ");
        int num = int.parse(stdin.readLineSync()!);
        decimalToHex(num);
        break;
      case 4:
        stdout.write("Enter a Binary number: ");
        String b = stdin.readLineSync()!;
        print("Decimal: ${binaryToDecimal(b)}");
        break;
      case 5:
        stdout.write("Enter an Octal number: ");
        String o = stdin.readLineSync()!;
        print("Decimal: ${octalToDecimal(o)}");
        break;
      case 6:
        stdout.write("Enter a Hexadecimal number: ");
        String h = stdin.readLineSync()!;
        print("Decimal: ${hexToDecimal(h)}");
        break;
      case 7:
        print("Exiting program...");
        return;
      default:
        print("Invalid choice! Try again.");
    }
  }
}
