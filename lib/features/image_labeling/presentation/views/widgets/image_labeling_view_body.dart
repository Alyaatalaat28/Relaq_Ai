import 'package:flutter/widgets.dart';
import 'package:relaq_ai/core/widgets/image_upload.dart';
import 'package:relaq_ai/core/widgets/process_button.dart';

class ImageLabelingViewBody extends StatelessWidget {
  const ImageLabelingViewBody ({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          UploadImageOptions(),
          SizedBox(
            height: 30,
          ),
          ProcessButton(
            text:'Recognize Image'
          ),
        ],
      ),
    );
  }
}