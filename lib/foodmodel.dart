class Foodmodel {
  String foodName;
  // ignore: non_constant_identifier_names
  String Rate;
  String image;
  Foodmodel({required this.foodName,required this.Rate,required this.image});
}



List<Foodmodel>foodData=[
  Foodmodel(foodName:'Biriyani', Rate: '120rs', image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmKHrcpFUOsyZTEB0LdQSCVJjeFy0n-x9pig&s'),
  Foodmodel(foodName: 'Mandhi', Rate: '120rs', image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJP7xt67XEFMOzcydxdJeWO-swwHQgTEei4g&s'),
  Foodmodel(foodName: 'Shawarma', Rate: '90rs', image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSvsMfZclcRwWyh6-DGH284nxDormCzmZoymQ&s'),
  Foodmodel(foodName: 'Shawaya', Rate: '195rs', image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRuUzlIYyJaSS8ZN5bXZz5-PfKWrMGN7TZ5GQ&s'),
  Foodmodel(foodName: 'Madhooth', Rate: '120rs', image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZquZ2-XcDWexyMl6JpbJkd7QUOGF8eKH0ng&s'),
  Foodmodel(foodName: 'Al-fahm', Rate: '120rs', image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRD-jwe57t-DKZId7yqNxvNrl7gtyRKt-HIrg&s'),
];