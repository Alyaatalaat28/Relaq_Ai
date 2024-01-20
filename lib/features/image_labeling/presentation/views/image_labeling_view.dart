
import 'package:flutter/material.dart';

import 'widgets/image_labeling_view_body.dart';

class ImageLabelingView extends StatelessWidget {
  const ImageLabelingView({super.key});

  @override
  Widget build(BuildContext context) {
    return  const SafeArea(
      child: Scaffold(
        body: ImageLabelingViewBody(),
      ),
    );
  }
}