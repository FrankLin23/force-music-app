import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:force_music_app/theme.dart';

class NotificationArea extends StatelessWidget {
  const NotificationArea({Key? key, required this.screenSize})
      : super(key: key);

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.only(top: 44),
          width: screenSize.width,
          height: 240,
          decoration: const BoxDecoration(
              color: primary,
              borderRadius:
                  BorderRadius.only(bottomRight: Radius.circular(100))),
          child: Container(
            padding:
                const EdgeInsets.only(top: 19, bottom: 19, right: 25, left: 25),
            child: SizedBox(
              width: screenSize.width,
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Evening,",
                        style: TextStyle(
                            color: Colors.white.withOpacity(0.5), fontSize: 16),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        "abc",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  const Spacer(),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      IconButton(
                          onPressed: () {
                            Navigator.pushNamed(context, "/login");
                          },
                          icon: SvgPicture.asset('assets/icons/bell.svg')),
                      const SizedBox(
                        width: 18,
                      ),
                      Container(
                        width: 38,
                        height: 38,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(19)),
                        child: const Image(
                          width: 38,
                          height: 38,
                          image: AssetImage('assets/images/avatar.png'),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        Positioned(
          top: 0,
          left: 0,
          child: Image(
            width: screenSize.width,
            height: 240,
            image: const AssetImage('assets/images/bg.png'),
          ),
        )
      ],
    );
  }
}
