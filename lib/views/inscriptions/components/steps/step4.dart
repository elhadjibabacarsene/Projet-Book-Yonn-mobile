import 'package:book_yonn_mobile/shared/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';


GlobalKey<FormState> keyFormStep4 = GlobalKey<FormState>();

class Step4 extends StatefulWidget {
  const Step4({Key? key}) : super(key: key);

  @override
  _Step4State createState() => _Step4State();
}

class _Step4State extends State<Step4> {
  Future<void> _takePicture() async {
    final picker = ImagePicker();
    final imageFile = await picker.pickImage(
      source: ImageSource.camera,
      maxWidth: 600,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: keyFormStep4,
      child: Padding(
        padding: const EdgeInsets.only(top: 50.0),
        child: Column(
          children: [
            Text(
              'Choisissez une photo de profil afin d\'être facilement reconnaissable.',
              textAlign: TextAlign.center,
              style: TextStyle(
                height: 1.5,
                fontSize: 17,
                letterSpacing: 0.2,
                color: colorLightGray,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 170),
              child: GestureDetector(
                onTap: _takePicture,
                child: CircleAvatar(
                  backgroundColor: colorGray,
                  radius: 70.0,
                  child: Center(
                    child: Icon(
                      Icons.add,
                      color: colorSlowGray,
                      size: 70,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
