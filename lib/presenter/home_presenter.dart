import 'package:flutter/material.dart';
import 'package:ui_app/data/repository/carousel_repository.dart';
import 'package:ui_app/data/vos/carousel_image_vo.dart';

class HomePresenter extends ChangeNotifier {
  final CarouselRepository _carouselRepository = CarouselRepository();
  List<CarouselImageVO> carouselDataList = [];
  List<String> carouselImages = [];

  HomePresenter() {
    carouselDataList = _carouselRepository.getAllCarouselNetworkDataList();
    carouselImages.addAll(carouselDataList.map((e) => e.image).toList());
    notifyListeners();
  }
}
