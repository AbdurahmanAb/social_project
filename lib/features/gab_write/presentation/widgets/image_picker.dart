import 'dart:io';

import 'package:image_picker/image_picker.dart';

Future pickimage() async {
  final image = await ImagePicker().pickImage(source: ImageSource.gallery);

  if (image == null) return;

  return File(image.path);
}
