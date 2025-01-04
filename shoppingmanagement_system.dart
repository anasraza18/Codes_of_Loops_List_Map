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
    int price = int.parse(stdin.readLineSync()!);

    stdout.write("Enter the Stock :");
    int stock = int.parse(stdin.readLineSync()!);

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
//---------------------------------------------3. Calculate Total Cart Value:-----------------
  int count;
  for (var i in ListofProduct) {
    count = i['price'] * i['stock'];
    print("Total price of ${i['name']} in cart : \$${count}");
    print('');
  }
  
//-------------------------------------------4. Display Cart Items:--------------------
   
}