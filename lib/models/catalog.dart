import 'package:flutter/material.dart';

class CatalogModel {
  static final catModel = CatalogModel._internal();
  CatalogModel._internal();
  factory CatalogModel()=>catModel;
  static List<Item> items = [
    Item(
        id: 1,
        name: "Iphone 12 pro",
        desc: "Apple Iphone 12th generation",
        price: 999,
        color: "#33505a",
        image:
            "https://img4.gadgetsnow.com/gd/images/products/additional/large/G201746_View_1/mobiles/smartphones/apple-iphone-12-pro-128-gb-pacific-blue-6-gb-ram-.jpg"),
    Item(
        id: 2,
        name: "Galaxy S21 Ultra",
        desc: "Samsung Galaxy S21 Ultra 2021 edition",
        price: 1299,
        color: "#1c1c1c",
        image:
            "https://www.hilaptop.com/environment/cache/images/500_500_productGfx_16677.jpg"),
    Item(
        id: 3,
        name: "Pixel 5",
        desc: "Google Pixel 5th generation",
        price: 699,
        color: "#99ac51",
        image: "https://m.media-amazon.com/images/I/513w-Nev-OL.jpg"),
    Item(
        id: 4,
        name: "M1 Macbook Air",
        desc: "Apple macbook air with apple silicon",
        price: 1099,
        color: "#e0bfae",
        image:
            "https://5.imimg.com/data5/II/OY/MY-6222353/mac-air-apple-laptop-500x500.jpg"),
    Item(
        id: 5,
        name: "Playstation 5",
        desc: "Sony Playstation 5th generation",
        price: 500,
        color: "#544ee4",
        image:
            "https://www.reliancedigital.in/medias/Sony-Playstation5-Gaming-Consoles-491936180-23?context=bWFzdGVyfGltYWdlc3w5NDM4fGltYWdlL2pwZWd8aW1hZ2VzL2hmMC9oNWIvOTQ1NDMwNzgzNTkzNC5qcGd8YmU1NWE0Zjg1MjdkZGQ3MDQ3MzU4MzMwZWZkNzMzMzJkODViYzQ1MGRkODk3YWM4MGYwNWRhYjEyMTljNjhmZQ"),
    Item(
        id: 6,
        name: "Airpods pro",
        desc: "Apple Airpods pro 1st generation",
        price: 200,
        color: "#e3e4e9",
        image:
            "https://www.jiomart.com/images/product/original/492571631/apple-mlwk3hn-a-airpods-pro-with-magsafe-charging-case-white-digital-o492571631-p590910250-0-202206072105.jpeg?im=Resize=(420,420)"),
    Item(
        id: 7,
        name: "iPad pro",
        desc: "Apple iPad pro 2020 edition",
        price: 799,
        color: "#f73984",
        image: "https://m.media-amazon.com/images/I/81hAx31maUL._SX679_.jpg")
  ];
   Item getById(int id)=>items.firstWhere((element) => element.id==id,orElse : null);
  Item getByPosition(int pos)=> items[pos];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
        id: map["id"],
        name: map["name"],
        desc: map["desc"],
        price: map["price"],
        color: map["color"],
        image: map["image"]);
  }

  toMap() => {
        "id": id,
        "name": name,
        "desc": desc,
        "price": price,
        "color": color,
        "image": image
      };
}
