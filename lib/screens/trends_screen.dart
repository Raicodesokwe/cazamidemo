import 'package:cazamidemo/models/profile_model.dart';
import 'package:cazamidemo/models/trending_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class TrendsScreen extends StatelessWidget {
  const TrendsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFF7F7F7),
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              elevation: 7,
              backgroundColor: const Color(0xFFFFFFFF),
              expandedHeight: size.height * 0.15,
              automaticallyImplyLeading: false,
              flexibleSpace: FlexibleSpaceBar(
                background: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  child: Row(
                    children: List.generate(
                        profileList.length,
                        (index) => Padding(
                              padding: EdgeInsets.only(
                                  left: 20, right: index == 4 ? 10 : 0),
                              child: index == 0
                                  ? Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            gradient: const LinearGradient(
                                                colors: [
                                                  Colors.purple,
                                                  Colors.pink
                                                ]),
                                            border: Border.all(
                                              color: Colors.transparent,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(32),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(2.0),
                                            child: Container(
                                              padding: const EdgeInsets.all(3),
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                border: Border.all(
                                                    color: Colors.white),
                                                borderRadius:
                                                    BorderRadius.circular(32),
                                              ),
                                              child: CircleAvatar(
                                                radius: 25,
                                                backgroundImage: AssetImage(
                                                    profileList[index].img!),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Text(
                                          profileList[index].name!,
                                          style: const TextStyle(
                                              fontWeight: FontWeight.w600),
                                        )
                                      ],
                                    )
                                  : Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          padding: const EdgeInsets.all(3),
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              border: Border.all(
                                                  color: Colors.black12)),
                                          child: CircleAvatar(
                                            radius: 25,
                                            backgroundImage: AssetImage(
                                                profileList[index].img!),
                                          ),
                                        ),
                                        Text(
                                          profileList[index].name!,
                                          style: const TextStyle(
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ],
                                    ),
                            )),
                  )
                      .animate()
                      .fadeIn(
                        duration: 1000.ms,
                      )
                      .slideX(
                        delay: 200.ms,
                        begin: 1.3,
                        duration: 300.ms,
                      ),
                ),
              ),
            ),
            SliverFillRemaining(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              const Text(
                                'All',
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Container(
                                height: 2,
                                width: 30,
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(7)),
                              )
                            ],
                          ),
                          const Text(
                            'Fashion',
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                          const Text(
                            'Beauty',
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                          const Text(
                            'Accessories',
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                          const Text(
                            'Sports',
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                        ],
                      )
                          .animate()
                          .fadeIn(
                            duration: 1000.ms,
                          )
                          .slideY(
                            delay: 200.ms,
                            begin: 1.3,
                            duration: 300.ms,
                          ),
                      SizedBox(
                        height: size.height * 0.01,
                      ),
                      MasonryGridView.builder(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              gridDelegate:
                                  const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 2),
                              itemCount: trendingList.length,
                              itemBuilder: (context, index) => Padding(
                                    padding: const EdgeInsets.all(4),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(7),
                                      child: Stack(
                                        children: [
                                          Image.asset(
                                              'assets/images/${trendingList[index].imageLabel}'),
                                          Positioned(
                                              bottom: 15,
                                              left: 30,
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    trendingList[index]
                                                        .caption!,
                                                    style: const TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      shadows: [
                                                        Shadow(
                                                          offset:
                                                              Offset(-1, -1),
                                                          color: Colors.black,
                                                        ),
                                                        Shadow(
                                                          offset: Offset(1, -1),
                                                          color: Colors.black,
                                                        ),
                                                        Shadow(
                                                          offset: Offset(1, 1),
                                                          color: Colors.black,
                                                        ),
                                                        Shadow(
                                                          offset: Offset(-1, 1),
                                                          color: Colors.black,
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Text(
                                                    trendingList[index]
                                                        .captionTwo!,
                                                    style: const TextStyle(
                                                      color: Colors.white70,
                                                    ),
                                                  )
                                                ],
                                              ))
                                        ],
                                      ),
                                    ),
                                  ))
                          .animate()
                          .fadeIn(
                            duration: 1000.ms,
                          )
                          .slideY(
                            delay: 200.ms,
                            begin: 1.3,
                            duration: 300.ms,
                          ),
                      SizedBox(
                        height: size.height * 0.05,
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
