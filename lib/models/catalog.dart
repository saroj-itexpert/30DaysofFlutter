class CatalogModel {
  static final items = [
    Item(
        id: "Product01",
        name: "iPhone 12 Pro",
        desc: "Apple iPhone 12th generation",
        color: "#33505a",
        price: 999.0,
        imageUrl:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRISJ6msIu4AU9_M9ZnJVQVFmfuhfyJjEtbUm3ZK11_8IV9TV25-1uM5wHjiFNwKy99w0mR5Hk&usqp=CAc"),
  ];
}

class Item {
  final String id;
  final String name;
  final String desc;
  final double price;
  final String color;
  final String imageUrl;

  Item({this.id, this.name, this.desc, this.price, this.color, this.imageUrl});
}

final products = [];
