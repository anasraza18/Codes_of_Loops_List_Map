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
//----------------------------------List All Products:------------------------------------------
  for (var i in ListofProduct) {
    print('');
    print("Product Name : ${i['name']}");
    print("Product price : ${i['price']}");
    print("Product Stock : ${i['stock']}");
    print('');
  }
//----------------------------------------Add Product to Product List:------------------------------
//  while (true) {
//     stdout.write("Enter the product name or exit :");
//     dynamic name = stdin.readLineSync()!;

//     if (name.toLowerCase() == 'exit') {
//       break; 
//     }

//     stdout.write("Enter the price :");
//     int price = int.parse(stdin.readLineSync()!);

//     stdout.write("Enter the Stock :");
//     int stock = int.parse(stdin.readLineSync()!);

//     ListofProduct.add({
//       'name' : name,
//       'price' : price,
//       'stock' : stock,
//     });
//   }
 
// for (var i in ListofProduct) {
//     print('');
//     print("Product Name : ${i['name']}");
//     print("Product price : ${i['price']}");
//     print("Product Stock : ${i['stock']}");
//     print('');
//   }
//---------------------------------------------Calculate Total Product List Value:-----------------
  int count;
  for (var i in ListofProduct) {
    count = i['price'] * i['stock'];
    print("Total price of ${i['name']} in cart : \$${count}");
    print('');
  }
  
//-------------------------------------------Remove Product from Product List:--------------------
  //  while (true) {
  //   stdout.write("Remove the product name or exit : ");
  //   dynamic rmv = stdin.readLineSync()!;

  //   if (rmv.toLowerCase() == 'exit') {
  //     break; 
  //   }

  //   ListofProduct.removeWhere((e) => e['name'].toString().toLowerCase() == rmv?.toLowerCase());
  // }

  //  for (var i in ListofProduct) {
  //   print('');
  //   print("Product Name : ${i['name']}");
  //   print("Product price : ${i['price']}");
  //   print("Product Stock : ${i['stock']}");
  //   print('');
  // }
//------------------------------------------Add Product to Cart:---------------------
  List Productcard = [];

  while (true) {
    stdout.write("Add to card or exit :");
    dynamic cardPname = stdin.readLineSync()!;

    if (cardPname == '' || cardPname.toLowerCase() == 'exit') {
      break; 
    }

    var selectedprod = ListofProduct.firstWhere((e) => e['name'] == cardPname);
    
    if (selectedprod != null) {
      stdout.write("Enter the quantity : ");
      int quantity = int.parse(stdin.readLineSync()! ?? '0');

      if (quantity != null && quantity > 0 && quantity <= selectedprod['stock']) {
        selectedprod['stock'] -= quantity;
        print('');
        print("updated stock of ${selectedprod['name']} is ${selectedprod['stock']}");

        Productcard.add({
          'name' : selectedprod['name'],
          'price' : selectedprod['price'],
          'Quantity' : quantity,
        });
        print('');
        print("Added $quantity of ${selectedprod['name']}");
      }else if(quantity == null){
        print('');
        print('Invalid Quantity or out of stock');
        break;
      }else{
        print('');
        print('Invalid Quantity or out of stock');
      } 
    } 
  }
//---------------------------------------------------Calculate Total Cart Value:-------------------------
        int totalprice = 0;
        for (var items in Productcard) {
          totalprice = items['price'] * items['Quantity'];
                  print('');
        print("Total Price of ${items['name']} : ${totalprice}");
    }
//-----------------------------------------------------Display Cart Items:--------------------------------------------------
   for (var i in Productcard) {
    print('');
    print("Product Name : ${i['name']}");
    print("Product price : ${i['price']}");
    print("Product Quantity : ${i['Quantity']}");
    print('');
  }
//---------------------------------------------------------Remove Product from Cart:---------------
   while (true) {
     
     stdout.write("Remove from card or exit : ");
     dynamic rmvcard = stdin.readLineSync();
     if (rmvcard.toLowerCase() == 'exit') {
       break;
     }
     
     if (Productcard != null) {
      Productcard.removeWhere((e) => e['name'] == rmvcard);  
      print("Removed!"); 
     }else{
      print("invalid product or not contain");
     }
   }
   for (var i in Productcard) {
    print('');
    print("Product Name : ${i['name']}");
    print("Product price : ${i['price']}");
    print("Product Quantity : ${i['Quantity']}");
    print('');
  }
//-----------------------------------------------------------------------
}