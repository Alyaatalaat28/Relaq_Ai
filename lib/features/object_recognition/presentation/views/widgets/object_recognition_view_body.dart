import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:relaq_ai/core/widgets/image_upload.dart';
import 'package:relaq_ai/features/message/presentation/manager/cubit/app_cubit.dart';
import 'package:relaq_ai/features/object_recognition/presentation/views/widgets/process_button.dart';

class ObjectRecognitionViewBody extends StatelessWidget {
  const ObjectRecognitionViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  BlocBuilder<AppCubit, AppState>(
      builder: (context, state) {
        var cubit=AppCubit.get(context);
        return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const UploadImageOptions(),
            const SizedBox(
              height: 30,
            ),
            ProcessButton(
              onPressed: (){
                    cubit.pickImageAndProcess(context);
              },
              text:'Recognize Object'
            ),
          ],
        ),
      );
      }
    );
  }
}