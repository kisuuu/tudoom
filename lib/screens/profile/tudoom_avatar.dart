import 'package:flutter/material.dart';

class TudoomAvatarScreen extends StatefulWidget {
  const TudoomAvatarScreen({Key? key}) : super(key: key);

  @override
  State<TudoomAvatarScreen> createState() => _TudoomAvatarScreenState();
}

class _TudoomAvatarScreenState extends State<TudoomAvatarScreen> {
  late OverlayEntry _popupDialog;
  List<String> imageUrls = [
    'https://placeimg.com/640/480/animals',
    'https://placeimg.com/640/480/arch',
    'https://placeimg.com/640/480/nature',
    'https://placeimg.com/640/480/people',
    'https://placeimg.com/640/480/tech',
    'https://placeimg.com/640/480/animals',
    'https://placeimg.com/640/480/arch',
    'https://placeimg.com/640/480/nature',
    'https://placeimg.com/640/480/people',
    'https://placeimg.com/640/480/tech',
    'https://placeimg.com/640/480/nature',
    'https://placeimg.com/640/480/people',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4),
        child: GridView.count(
          crossAxisCount: 3,
          childAspectRatio: 1.0,
          mainAxisSpacing: 2,
          crossAxisSpacing: 4,
          children: imageUrls.map(_createGridTileWidget).toList(),
        ),
      ),
    );
  }

  Widget _createGridTileWidget(String url) => Builder(
        builder: (context) => GestureDetector(
          // onLongPress: () {
          //   _popupDialog = _createPopupDialog(url);
          //   Overlay.of(context).insert(_popupDialog);
          // },
          // onLongPressEnd: (details) => _popupDialog.remove(),
          child: Image.network(url, fit: BoxFit.cover),
        ),
      );
}
