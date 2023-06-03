import 'dart:io';

import 'package:image_picker/image_picker.dart';
import 'package:mova/src/utils/common_import.dart';

class UserImagePicker extends StatefulWidget {
  const UserImagePicker({
    Key? key,
    required this.onPickImagePressed,
  }) : super(key: key);

  final void Function(File image) onPickImagePressed;

  @override
  State<UserImagePicker> createState() => _UserImagePickerState();
}

class _UserImagePickerState extends State<UserImagePicker> {
  File? _image;
  void _pickImage() async {
    final pickedImage = await ImagePicker().pickImage(
      source: ImageSource.gallery,
      imageQuality: 50,
      maxWidth: 120,
    );

    if (pickedImage != null) {
      setState(() {
        _image = File(pickedImage.path);
      });
      widget.onPickImagePressed(File(pickedImage.path));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        GestureDetector(
          onTap: _pickImage,
          child: Container(
            height: 120,
            width: 120,
            decoration: const BoxDecoration(
              color: AppColors.transparent,
              shape: BoxShape.circle,
            ),
            child: _image != null
                ? CircleAvatar(
                    backgroundColor: const Color(0xFFFAFAFA),
                    backgroundImage: FileImage(_image!),
                  )
                : Image.asset('assets/images/empty_pp.png'),
          ),
        ),
        Positioned(
          right: 110,
          bottom: 8,
          child: GestureDetector(
            onTap: _pickImage,
            child: Container(
              height: 28,
              width: 28,
              decoration: BoxDecoration(
                color: AppColors.primary,
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Icon(
                Icons.edit,
                color: AppColors.white,
                size: 18,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
