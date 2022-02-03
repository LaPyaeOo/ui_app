import 'package:ui_app/data/network/carousel_network_datasource.dart';
import 'package:ui_app/data/vos/carousel_image_vo.dart';

class CarouselRepository {
  final CarouselNetworkDataSource _carouselNetworkDataSource =
      CarouselNetworkDataSource();

  List<CarouselImageVO> getAllCarouselNetworkDataList(){
    return _carouselNetworkDataSource.getCrouselData();
  }
}
