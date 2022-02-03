import '../vos/carousel_image_vo.dart';

class CarouselNetworkDataSource {
  List<CarouselImageVO> getCrouselData() {
    return [
      CarouselImageVO("title 1",
          "https://img.freepik.com/free-vector/restaurant-mural-wallpaper_23-2148692632.jpg?size=626&ext=jpg"),
      CarouselImageVO("title 2",
          "https://news.colgate.edu/magazine/wp-content/uploads/sites/6/2018/09/placeholder-260x170.jpg"),
      CarouselImageVO("title 2",
          "https://image.shutterstock.com/image-vector/fast-food-seamless-background-vector-260nw-586262732.jpg"),
      CarouselImageVO("title 3",
          "https://news.colgate.edu/magazine/wp-content/uploads/sites/6/2018/09/placeholder-260x170.jpg"),
      CarouselImageVO("title 4",
          "https://news.colgate.edu/magazine/wp-content/uploads/sites/6/2018/09/placeholder-260x170.jpg"),
      CarouselImageVO("title 5",
          "https://news.colgate.edu/magazine/wp-content/uploads/sites/6/2018/09/placeholder-260x170.jpg")
    ];
  }
}
