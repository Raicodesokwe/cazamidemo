import 'package:cazamidemo/models/bottom_nav_model.dart';
import 'package:cazamidemo/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../routes/app_routes.dart';

class BottomWrapper extends StatefulWidget {
  final Widget child;
  const BottomWrapper({super.key, required this.child});

  @override
  State<BottomWrapper> createState() => _BottomWrapperState();
}

class _BottomWrapperState extends State<BottomWrapper> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final RouteMatch lastMatch =
        router.routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : router.routerDelegate.currentConfiguration;
    final String location = matchList.uri.toString();
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          widget.child,
          Container(
            margin: const EdgeInsets.only(bottom: 20),
            height: 60,
            width: size.width * 0.35,
            decoration: BoxDecoration(
              color: const Color(0xFFF7F7F7).withOpacity(0.5),
              borderRadius: BorderRadius.circular(60),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: bottomNavList
                  .map(
                    (item) => IconButton(
                      onPressed: () {
                        if (location != item.routeName) {
                          context.push(item.routeName);
                        }
                      },
                      icon: Icon(
                        item.iconAsset,
                        color: location == item.routeName
                            ? AppColor.purpleColor
                            : Colors.white,
                      ),
                    ),
                  )
                  .toList(),
            ),
          )
        ],
      ),
    );
  }
}
