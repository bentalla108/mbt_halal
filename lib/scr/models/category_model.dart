import 'package:flutter/material.dart';
import '../core/utils/constants/colors.dart';

class CategoryModel {
  int? typeId;
  String? typeName;
  String? image;
  Color? color;

  CategoryModel({this.typeId, this.typeName, this.image, this.color});

  CategoryModel.fromJson(Map<String, dynamic> json) {
    typeId = json['id'];
    typeName = json['typeName'];
    image = json['image'];
    // color = HexColor.fromHex(json['color'].toString());
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['id'] = typeId;
    data['typeName'] = typeName;
    data['image'] = image;
    // data['color'] = color?.toHex();
    return data;
  }
}

// Assurez-vous d'importer correctement le fichier du modèle.

class TypeModelMock {
  static List<CategoryModel> getMockTypes() {
    return [
      CategoryModel(
        typeId: 1,
        typeName: "Fresh Fruit",
        image: "assets/images/categories/6.png",
        color: Colors.blue,
      ),
      CategoryModel(
        typeId: 2,
        typeName: "Baking & Cooking",
        image: "assets/images/categories/1.png",
        color: Colors.green,
      ),
      CategoryModel(
        typeId: 3,
        typeName: "Milk, Butter & Eggs",
        image: "assets/images/categories/2.png",
        color: Colors.red,
      ),
      CategoryModel(
        typeId: 4,
        typeName: "Fresh Vegetables",
        image: "assets/images/categories/3.png",
        color: Colors.amber,
      ),
      CategoryModel(
        typeId: 4,
        typeName: "sample 1",
        image: "assets/images/categories/4.png",
        color: Colors.amber,
      ),
      CategoryModel(
        typeId: 5,
        typeName: "sample",
        image: "assets/images/categories/5.png",
        color: Colors.amber,
      ),
      // Ajoutez autant d'objets TypeModel fictifs que nécessaire.
    ];
  }
}
