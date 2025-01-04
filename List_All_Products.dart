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

  for (var i in ListofProduct) {
    print('');
    print("Product Nmae : ${i['name']}");
    print("Product price : ${i['price']}");
    print("Product Stock : ${i['stock']}");
    print('');
  }
}