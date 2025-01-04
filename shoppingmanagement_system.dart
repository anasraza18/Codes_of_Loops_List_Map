import 'dart:io';
void main(){

  List ListofProduct = [
     {
      'name' : 'Mobile',
      'price' : 50000,
      'stock' : 5,
    },
     {
      'name' : 'Laptop',
      'price' : 90000,
      'stock' : 2,
    },
     {
      'name' : 'Speaker',
      'price' : 2000,
      'stock' : 20,
    },
  ];
//----------------------------------1. List All Products:------------------------------------------
  for (var i in ListofProduct) {
    print('');
    print("Product Name : ${i['name']}");
    print("Product price : ${i['price']}");
    print("Product Stock : ${i['stock']}");
    print('');
  }
//----------------------------------------2. Add Product to Cart:------------------------------
 while (true) {
    stdout.write("Enter the product name or exit :");
    dynamic name = stdin.readLineSync()!;

    if (name.toLowerCase() == 'exit') {
      break; 
    }

    stdout.write("Enter the price :");
    dynamic price = stdin.readLineSync()!;

    stdout.write("Enter the Stock :");
    dynamic stock = stdin.readLineSync()!;

    ListofProduct.add({
      'name' : name,
      'price' : price,
      'stock' : stock,
    });
  }
 
for (var i in ListofProduct) {
    print('');
    print("Product Name : ${i['name']}");
    print("Product price : ${i['price']}");
    print("Product Stock : ${i['stock']}");
    print('');
  }
//--------------------------------------------------------------
}