import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ui_app/pod/k_carousel.dart';
import 'package:ui_app/presenter/home_presenter.dart';

class ByRoomScreen extends StatelessWidget {
  const ByRoomScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<HomePresenter>(
      create: (context) => HomePresenter(),
      child: Consumer<HomePresenter>(
          builder: (context, hPresenter, child) => ListView.builder(
            primary: false,
                itemBuilder: (context, index) => Container(
                  child: Column(
                    children: hPresenter.carouselImages
                        .map((e) => Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Center(child: Image.network(e)),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Deluxe Twin',
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline6,
                                        ),
                                        Text(
                                          'Twin Single Beds, Cable, TV, Free Wifi...',
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline3!
                                              .copyWith(
                                                fontWeight: FontWeight.normal,
                                              ),
                                        ),
                                      ],
                                    ),
                                    Container(
                                      height: 50,
                                      margin: EdgeInsets.symmetric(vertical: 10),
                                      child: TextButton(
                                        onPressed: () {},
                                        style: ButtonStyle(
                                          shape: MaterialStateProperty.all<
                                              RoundedRectangleBorder>(
                                            RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(2),
                                              side:
                                                  BorderSide(color: Colors.red),
                                            ),
                                          ),
                                        ),
                                        child: Text(
                                          'View Rates',
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline3!
                                              .copyWith(
                                                color: Colors.red,
                                                fontWeight: FontWeight.normal,
                                              ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                  Text(
                                    'Avg.Nighty /Room Form',
                                    style: Theme.of(context).textTheme.headline3,
                                  ),
                                  RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                            text: 'SGD',
                                            style: Theme.of(context).textTheme.headline3),
                                        TextSpan(
                                            text: '161.42',
                                            style: Theme.of(context).textTheme.headline2),
                                      ],
                                    ),
                                  ),
                                ],),
                                SizedBox(height: 10,),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                                  child: Divider(
                                    color: Colors.black,
                                    thickness: 2.0,
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                              ],
                            ))
                        .toList(),
                  ),
                ),
                itemCount: hPresenter.carouselDataList.length,
              )),
    );
  }
}

//ListView(
//       //crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         ChangeNotifierProvider<HomePresenter>(
//           create: (context) => HomePresenter(),
//           child: Consumer<HomePresenter>(
//             builder: (context, hPresenter, child) => Stack(
//               children: [
//                 Kcarousel(carouselImage: hPresenter.carouselImages),
//               ],
//             ),
//           ),
//         ),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//               Text(
//                 'Deluxe Twin',
//                 style: Theme.of(context).textTheme.headline6,
//               ),
//               Text(
//                 'Twin Single Beds, Cable, TV, Free Wifi...',
//                 style: Theme.of(context).textTheme.headline3!.copyWith(
//                   fontWeight: FontWeight.normal,
//                 ),
//               ),
//             ],),
//             Container(
//               height: 50,
//               child: TextButton(
//                 onPressed: () {},
//                 style: ButtonStyle(
//                   shape: MaterialStateProperty.all<RoundedRectangleBorder>(
//                     RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(2),
//                       side: BorderSide(color: Colors.red),
//                     ),
//                   ),
//                 ),
//                 child: Text(
//                   'View Rates',
//                   style: Theme.of(context).textTheme.headline3!.copyWith(
//                         color: Colors.red,
//                         fontWeight: FontWeight.normal,
//                       ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ],
//     )
