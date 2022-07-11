import 'package:flutter/material.dart';
import 'package:tudoom/screens/profile/tudoom_profile.dart';

class TudoomProfileLabel extends StatelessWidget {
  const TudoomProfileLabel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: dead_code
    return NestedScrollView(
      headerSliverBuilder: (conetext, index) {
        return [
          const SliverToBoxAdapter(
            child: TudoomProfile(),
          ),
          // SliverPersistentHeader( pinned: true ,delegate: PersistentHeader(child: Text(""), mXExtend: 50, mnExtent: 50,  ),),
        ];
      },
      body: const Text(
        '',
      ),
    );
  }
}
