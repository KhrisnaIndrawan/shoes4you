import 'dart:convert';

List<Shoe> shoeFromJson(String str) => List<Shoe>.from(json.decode(str).map((x) => Shoe.fromJson(x)));

String shoeToJson(List<Shoe> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Shoe {
    String id;
    String shoeName;
    String brand;
    String silhoutte;
    String styleId;
    String make;
    String colorway;
    int retailPrice;
    String thumbnail;
    String releaseDate;
    String description;
    String urlKey;
    int goatProductId;

    Shoe({
        required this.id,
        required this.shoeName,
        required this.brand,
        required this.silhoutte,
        required this.styleId,
        required this.make,
        required this.colorway,
        required this.retailPrice,
        required this.thumbnail,
        required this.releaseDate,
        required this.description,
        required this.urlKey,
        required this.goatProductId,
    });

    factory Shoe.fromJson(Map<String, dynamic> json) => Shoe(
        id: json["id"],
        shoeName: json["shoeName"],
        brand: json["brand"],
        silhoutte: json["silhoutte"],
        styleId: json["styleID"],
        make: json["make"],
        colorway: json["colorway"],
        retailPrice: json["retailPrice"],
        thumbnail: json["thumbnail"],
        releaseDate: json["releaseDate"],
        description: json["description"],
        urlKey: json["urlKey"],
        goatProductId: json["goatProductId"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "shoeName": shoeName,
        "brand": brand,
        "silhoutte": silhoutte,
        "styleID": styleId,
        "make": make,
        "colorway": colorway,
        "retailPrice": retailPrice,
        "thumbnail": thumbnail,
        "releaseDate": releaseDate,
        "description": description,
        "urlKey": urlKey,
        "goatProductId": goatProductId,
    };
}

final shoesJsonData = [
  {
    "id": "6329fdf0d6074c002321eac5",
    "shoeName": "Jordan 3 Retro Fire Red (2022)",
    "brand": "Jordan",
    "silhoutte": "Jordan 3 Retro",
    "styleID": "DN3707-160",
    "make": "Jordan 3 Retro",
    "colorway": "White/Fire Red/Cement Grey/Black",
    "retailPrice": 210,
    "thumbnail":
        "https://images.stockx.com/images/Air-Jordan-3-Retro-Fire-Red-2022-Product.jpg?fit=fill&bg=FFFFFF&w=700&h=500&fm=webp&auto=compress&trim=color&q=90&dpr=2&updated_at=1663687791",
    "releaseDate": "2022-09-10",
    "description":
        "The Air Jordan 3 Retro 'Fire Red' sees one of the original colors of the silhouette return, true to form. A white leather upper is paired with grey elephant print overlays on the toe and heel, while Fire Red accents on the midsole and collor offers a pop of contrast. Designed by Tinker Hatfield, the Air Jordan 3 was the first to feature a visible Nike Air unit, along with the Jumpman logo. This 2022 edition sees the return of the 'Nike Air' logo on the back heel, along with the 'Nike' wordmark on the outsole.",
    "urlKey": "air-jordan-3-retro-fire-red-2022",
    "goatProductId": 942086
  },
  {
    "id": "6329fdf0d6074c002321eac6",
    "shoeName": "NikeCraft General Purpose Shoe Tom Sachs Archive Dark Sulfur",
    "brand": "Nike",
    "silhoutte": "NikeCraft General Purpose Shoe",
    "styleID": "DA6672-700",
    "make": "NikeCraft General Purpose Shoe",
    "colorway": "Dark Sulfur/White-Light Cream",
    "retailPrice": 110,
    "thumbnail":
        "https://images.stockx.com/images/NikeCraft-General-Purpose-Shoe-Tom-Sachs-Yellow-Product.jpg?fit=fill&bg=FFFFFF&w=700&h=500&fm=webp&auto=compress&trim=color&q=90&dpr=2&updated_at=1662558895",
    "releaseDate": "2022-09-02",
    "description": "The NikeCraft General Purpose Shoe Tom Sachs Yellow is the result of a collaboration between Nike and Tom Sachs. The Tom Sachs Yellow NikeCraft takes on a functional design with a yellow mesh upper with tonal suede overlays and a contrasting white Swoosh on the lateral and medial sides. Orange tabs on the heel and tongue allow an easy on and off. The shoe sits a top a cream midsole packed with EVA for cushioning, while a black waffle-traction rubber outsole is for grip. The NikeCraft General Purpose Shoe Tom Sachs Yellow was released on the 2nd of September 2022, and originally retailed for \$110.",
    "urlKey": "nikecraft-general-purpose-shoe-tom-sachs-yellow",
    "goatProductId": 981386
  },
  {
    "id": "6329fdf0d6074c002321eac7",
    "shoeName": "Jordan 2 Retro J Balvin",
    "brand": "Jordan",
    "silhoutte": "Jordan 2 Retro",
    "styleID": "DQ7691-419",
    "make": "Jordan 2 Retro",
    "colorway": "Celestine Blue/White-Multi-Color",
    "retailPrice": 300,
    "thumbnail":
        "https://images.stockx.com/images/Air-Jordan-2-Retro-J-Balvin.jpg?fit=fill&bg=FFFFFF&w=700&h=500&fm=webp&auto=compress&trim=color&q=90&dpr=2&updated_at=1658226768",
    "releaseDate": "2022-09-15",
    "description":
        "The Air Jordan 2 Retro gets a colorful makeover by Colombian reggaeton artist J Balvin. The upper is crafted with powder blue ripstop material and grey suede accented by multicolor stitching, while an all-over graphic featuring cloudy blue skies can be seen on the heel counter and interior lining. J Balvin's signature smiley face graphic is affixed on the back heel, while the Wings logo on the tongue has a glow-in-the-dark finish. A contrasting white midsole leads to a translucent outsole, while encapsulated Nike Air offers lightweight cushioning.",
    "urlKey": "air-jordan-2-retro-j-balvin",
    "goatProductId": 949375
  },
  {
    "id": "6329fdf0d6074c002321eac8",
    "shoeName": "Nike Air Force 1 Low Off-White Brooklyn",
    "brand": "Nike",
    "silhoutte": "Nike Air Force 1 Low",
    "styleID": "DX1419-300",
    "make": "Nike Air Force 1 Low",
    "colorway": "Light Green Spark/Metallic Silver-Light Green Spark",
    "retailPrice": 160,
    "thumbnail":
        "https://images.stockx.com/images/Nike-Air-Force-1-Low-Off-White-Light-Green-Spark-Product.jpg?fit=fill&bg=FFFFFF&w=700&h=500&fm=webp&auto=compress&trim=color&q=90&dpr=2&updated_at=1662666856",
    "releaseDate": "2022-09-15",
    "description":
        "The Off-White x Nike Air Force 1 Low 'Brooklyn' features the same color block and details first seen in the 2019 'MCA' iteration and the 2021 'Lemonade' version. The 'Brooklyn' colorway features a vivid green leather upper, with classic Abloh details such as exposed foam construction and medial side text in Helvetica. The silver foil Swooshes return with black zigzag stitching, along with 'AIR' stamped on the lateral midsole.",
    "urlKey": "nike-air-force-1-low-off-white-light-green-spark",
    "goatProductId": 935629
  },
  {
    "id": "6329fdf0d6074c002321eac9",
    "shoeName": "New Balance 990v1 Carhartt WIP MiUSA Dark Navy",
    "brand": "New Balance",
    "silhoutte": "New Balance 990v1",
    "styleID": "M990CH1",
    "make": "New Balance 990v1",
    "colorway": "Dark Navy/Pussywillow Grey",
    "retailPrice": 225,
    "thumbnail":
        "https://images.stockx.com/images/New-Balance-990v1-Carhartt-WIP-MiUSA-Dark-Navy-Product.jpg?fit=fill&bg=FFFFFF&w=700&h=500&fm=webp&auto=compress&trim=color&q=90&dpr=2&updated_at=1661522638",
    "releaseDate": "2022-09-16",
    "description": "New Balance recently released their first collaborative project with Carhartt WIP. Headlining the collection was a pair of the 990 V1, done in predominantly navy blue hairy suede and grey mesh.",
    "urlKey": "new-balance-990v1-carhartt-wip-miusa-dark-navy",
    "goatProductId": 1025194
  }
];

final shoes = shoeFromJson(json.encode(shoesJsonData));