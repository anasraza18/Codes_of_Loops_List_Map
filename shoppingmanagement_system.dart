import 'dart:io';
void main(){

  List ListofProduct = [
     {
      'name' : 'Mobile',
      'price' : 50000,
      'stock' : 0,
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
  // for (var i in ListofProduct) {
  //   print('');
  //   print("Product Name : ${i['name']}");
  //   print("Product price : ${i['price']}");
  //   print("Product Stock : ${i['stock']}");
  //   print('');
  // }
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
  // int count;
  // for (var i in ListofProduct) {
  //   count = i['price'] * i['stock'];
  //   print("Total price of ${i['name']} in cart : \$${count}");
  //   print('');
  // }
  
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

    if(cardPname == ''){
      print("product name can not be empty!");
      continue;
    }

    if (cardPname.toLowerCase() == 'exit') {
      break; 
    }

    var selectedprod = ListofProduct.firstWhere((e) => e['name'] == cardPname);
    
    while (true) {
      
      stdout.write("Enter the quantity : ");
      dynamic quantityinput = stdin.readLineSync();

      if (quantityinput.toString().toLowerCase() == 'exit') {
        break;
      }

      if(quantityinput == ''){
        print("Enter the quantity!");
        continue;
      }
      int quantity = int.parse(quantityinput);

      if (quantity > 0 && quantity >= selectedprod['stock']) {
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

      }else if(quantity <= 0 && quantity <= selectedprod['stock']){
        print('');
        print('Invalid Quantity or out of stock');
      }
      } 
    } 
  
//---------------------------------------------------Calculate Total Cart Value:-------------------------
    //     int totalprice = 0;
    //     for (var items in Productcard) {
    //       totalprice = items['price'] * items['Quantity'];
    //               print('');
    //     print("Total Price of ${items['name']} : ${totalprice}");
    // }
//-----------------------------------------------------Display Cart Items:--------------------------------------------------
  //  for (var i in Productcard) {
  //   print('');
  //   print("Product Name : ${i['name']}");
  //   print("Product price : ${i['price']}");
  //   print("Product Quantity : ${i['Quantity']}");
  //   print('');
  // }
//---------------------------------------------------------Remove Product from Cart:---------------
  //  while (true) {
     
  //    stdout.write("Remove from card or exit : ");
  //    dynamic rmvcard = stdin.readLineSync();
  //    if (rmvcard.toLowerCase() == 'exit') {
  //      break;
  //    }
     
  //    if (Productcard == true) {
  //     Productcard.removeWhere((e) => e['name'] == rmvcard);  
  //     print("Removed!"); 
  //    }else{
  //     print("invalid product or not contain");
  //    }
  //  }
  //  for (var i in Productcard) {
  //   print('');
  //   print("Product Name : ${i['name']}");
  //   print("Product price : ${i['price']}");
  //   print("Product Quantity : ${i['Quantity']}");
  //   print('');
  // }
//--------------------------------------------Apply Discount Based on Total Cart Value:---------------------
  //  int disc = 10;
  //  if(totalprice >= 5000){

  //   double dicountAmount = (totalprice * disc)/100;
  //   double finalAmount = totalprice - dicountAmount;

  //   print("Discount Applied (${disc}% : -${dicountAmount})");
  //   print("Final Amount : $finalAmount");

  //  }else{
  //   print("No Discount Amount, your cart value is $totalprice");
  //  }
//-------------------------------------------------------Update Product Stock:----------------------
  // while (true) {
  //   stdout.write("Update the product name or exit : ");
  //   dynamic updName = stdin.readLineSync();
  //   if (updName.toString().toLowerCase() == 'exit') {
  //     break;
  //   }
  //   stdout.write("Update the product price : ");
  //   int updPrice = int.parse(stdin.readLineSync()!);

  //   stdout.write("Update the product Stock : ");
  //   int updStock = int.parse(stdin.readLineSync()!);

  //   ListofProduct.firstWhere((e) => e['name'] == updName);

  //   for (var upd in ListofProduct) {
  //     upd['price'] = updPrice;
  //     upd['stock'] = updStock;
  //   }
    
  // }
  
  //  for (var i in ListofProduct) {
  //   print('');
  //   print("Product Name : ${i['name']}");
  //   print("Product price : ${i['price']}");
  //   print("Product Stock : ${i['stock']}");
  //   print('');
  // }
//-----------------------------------------Check Product Availability in Cart:-----------------
    if (Productcard.isEmpty) {
      print('');
      print("Product cart is empty");

    }else{
      for (var i in Productcard) {
    print('');
    print('====check product card=====');
    print("Product Name : ${i['name']}");
    print("Product price : ${i['price']}");
    print("Product Quantity : ${i['Quantity']}");
    print('');
  }
    }
//------------------------------------------------------------------
   
}