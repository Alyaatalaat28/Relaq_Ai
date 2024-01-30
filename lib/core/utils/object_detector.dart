 import 'package:google_ml_kit/google_ml_kit.dart';

ObjectDetector objectDetector = GoogleMlKit.vision.objectDetector(
    options: ObjectDetectorOptions(
      mode: DetectionMode.single, 
      classifyObjects: true, 
      multipleObjects: true
      )
    );