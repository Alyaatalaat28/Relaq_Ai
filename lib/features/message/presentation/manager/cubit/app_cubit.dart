import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_ml_kit/google_ml_kit.dart';
import 'package:image_picker/image_picker.dart';
import 'package:relaq_ai/core/utils/api_service.dart';
import 'package:relaq_ai/core/utils/object_detector.dart';

part 'app_state.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(AppInitial());
  static AppCubit get(context)=>BlocProvider.of(context);
  
  List<Map<String, String>> chatMessages = [];

  void sendMessages(String message)async{
   await DioHelper.sendMessage(
     data: {
          'prompt': message,
          'max_tokens': 150,
        },
      ).then((value) {
       if(value.statusCode==200){
        String aiResponse = value.data['choices'][0]['text'].toString();
          chatMessages.add({'sender': 'user', 'message': message});
          chatMessages.add({'sender': 'ai', 'message': aiResponse});
          emit(SendMessageSuccessState());    
    }
      }).catchError((e){
        if (kDebugMode) {
          print(e.toString());
        }
        emit(SendMessageErrorState());
      });
  }

    Future<void> processImage(XFile imageFile) async {
    try {
      final InputImage inputImage = InputImage.fromFilePath(imageFile.path);
      final List<DetectedObject> detectedObjects = await objectDetector.processImage(inputImage);

      for (DetectedObject detectedObject in detectedObjects) {
        Rect boundingBox = detectedObject.boundingBox;
        String category = detectedObject.labels.first.text;
        double confidence = detectedObject.labels.first.confidence;

        if (kDebugMode) {
          print('Detected object: $category, Confidence: $confidence, Bounding Box: $boundingBox');
        }
      }
      emit(ProcessImageSuccessState());
    } catch (e) {
      if (kDebugMode) {
        print('Error processing image: $e');
      }
      emit(ProcessImageErrorState());
    }
  }

   Future<void> pickImageAndProcess(BuildContext context) async {
    final ImagePicker picker = ImagePicker();
    try {
      XFile? imageFile = await picker.pickImage(source: ImageSource.gallery);
      if (imageFile != null) {
        await processImage(imageFile);
        emit(PickAndProcessImageSuccessState());
      }
    } catch (e) {
      if (kDebugMode) {
        print('Error picking image: $e');
      }
      emit(PickAndProcessImageErrorState());
    }
  }
}
