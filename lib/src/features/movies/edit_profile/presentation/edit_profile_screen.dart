import 'dart:io';

import 'package:another_flushbar/flushbar.dart';
import 'package:auto_route/auto_route.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mova/src/routing/app_router.dart';

import '../../../../utils/common_import.dart';
import '../../../auth/infrastructure/validation_service.dart';
import '../../../auth/presentation/widgets/common_textfield.dart';
import '../../../fill_profile/presentation/user_image.dart';
import '../../home/shared/providers.dart';
import '../shared/providers.dart';

@RoutePage()
class EditProfileScreen extends StatefulHookConsumerWidget {
  final String? fullName;
  final String? nickName;
  final String? email;
  final String? phoneNumber;
  final String? imageUrl;
  final String? gender;

  const EditProfileScreen({
    super.key,
    this.imageUrl,
    this.fullName,
    this.nickName,
    this.email,
    this.phoneNumber,
    this.gender,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _EditProfileScreenState();
}

class _EditProfileScreenState extends ConsumerState<EditProfileScreen> {
  final _formkey = GlobalKey<FormState>();

  File? _image;
  String _genderValue = '';

  final _genderList = [
    'Male',
    'Female',
  ];

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
    }
  }

  @override
  void initState() {
    _genderValue = widget.gender != null ? widget.gender! : 'Male';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final userNameController = useTextEditingController(text: widget.fullName);
    final nicknameController = useTextEditingController(text: widget.nickName);
    final emailController = useTextEditingController(text: widget.email);
    final phoneController = useTextEditingController(text: widget.phoneNumber);
    ref.listen<AsyncValue<void>>(
      editProfileNotifierProvider,
      (previous, next) {
        next.maybeMap(
          orElse: () {},
          data: (_) {
            /* return Flushbar(
              message: 'Successfully update profile',
              icon: const Icon(
                Icons.info,
                color: AppColors.alertSuccess,
              ),
              borderRadius: BorderRadius.circular(10),
              backgroundColor: AppColors.bgGreen,
              messageColor: AppColors.alertSuccess,
              duration: const Duration(seconds: 2),
              margin: const EdgeInsets.all(16),
            ).show(context); */
          },
          error: (_) {
            /*   return Flushbar(
              message: 'Failed to update profile',
              icon: const Icon(
                Icons.info,
                color: AppColors.alertError,
              ),
              borderRadius: BorderRadius.circular(10),
              backgroundColor: AppColors.bgRed,
              messageColor: AppColors.alertError,
              duration: const Duration(seconds: 2),
              margin: const EdgeInsets.all(16),
            ).show(context); */
          },
        );
      },
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Profile'),
      ),
      body: ProgressHUD(
        barrierEnabled: true,
        child: Builder(
          builder: (ctx) {
            return SingleChildScrollView(
              child: Form(
                key: _formkey,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      /* 
                      Stack(
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
                                  : widget.imageUrl!.isEmpty ||
                                          widget.imageUrl == null
                                      ? Image.asset(
                                          'assets/images/empty_pp.png')
                                      : ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(100),
                                          child:
                                              Image.network(widget.imageUrl!),
                                        ),
                            ),
                          ),
                          Positioned(
                            right: 130,
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
                      ),
                      */
                      UserImagePicker(
                        onPickImagePressed: (imageFile) {
                          setState(() {
                            _image = imageFile;
                          });
                        },
                      ),
                      const SizedBox(height: 24),
                      CommonTextFormField(
                        hintText: 'Full Name',
                        controller: userNameController,
                        validator: ValidationService.validateFullNaMe,
                        textInputType: TextInputType.text,
                      ),
                      const SizedBox(height: 15),
                      CommonTextFormField(
                        hintText: 'Nickname',
                        controller: nicknameController,
                        validator: ValidationService.validateNickName,
                        textInputType: TextInputType.text,
                      ),
                      const SizedBox(height: 15),
                      CommonTextFormField(
                        hintText: 'Email',
                        controller: emailController,
                        validator: ValidationService.validateEmail,
                        suffixIcon: Image.asset('assets/icons/user_email.png'),
                        textInputType: TextInputType.emailAddress,
                      ),
                      const SizedBox(height: 15),
                      CommonTextFormField(
                        hintText: 'Phone Number',
                        controller: phoneController,
                        validator: ValidationService.validatePhoneNumber,
                        textInputType: TextInputType.phone,
                      ),
                      const SizedBox(height: 15),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 18,
                        ),
                        decoration: BoxDecoration(
                          color: Theme.of(context).canvasColor,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: DropdownButton(
                          value: _genderValue,
                          borderRadius: BorderRadius.circular(12),
                          dropdownColor: Theme.of(context).canvasColor,
                          isExpanded: true,
                          hint: Text(
                            'Gender',
                            style: Theme.of(context)
                                .inputDecorationTheme
                                .hintStyle,
                          ),
                          icon: Image.asset('assets/icons/arrow_down.png'),
                          underline: const SizedBox.shrink(),
                          items: _genderList.map((String items) {
                            return DropdownMenuItem(
                              value: items,
                              child: Text(
                                items,
                                style: GoogleFonts.urbanist(
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodyLarge
                                      ?.color,
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: .2,
                                  fontSize: 14,
                                ),
                              ),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              _genderValue = newValue!;
                            });
                          },
                        ),
                      ),
                      const SizedBox(height: 24),
                      ElevatedButton(
                        onPressed: () async {
                          if (_image == null) {
                            Flushbar(
                              message: 'Please provide an image',
                              icon: const Icon(
                                Icons.info,
                                color: AppColors.alertError,
                              ),
                              borderRadius: BorderRadius.circular(10),
                              backgroundColor: AppColors.bgRed,
                              messageColor: AppColors.alertError,
                              duration: const Duration(seconds: 2),
                              margin: const EdgeInsets.all(16),
                            ).show(context);
                          } else {
                            if (_formkey.currentState!.validate()) {
                              FocusScope.of(context).unfocus();
                              final progress = ProgressHUD.of(ctx);
                              progress!.show();
                              try {
                                ref
                                    .read(editProfileNotifierProvider.notifier)
                                    .editProfile(
                                      _image!,
                                      emailController.text,
                                      userNameController.text,
                                      nicknameController.text,
                                      phoneController.text,
                                      _genderValue,
                                    )
                                    .then((_) {
                                  progress.dismiss();

                                  ref
                                      .read(
                                          bottomNavigationRouterNotifierProvider
                                              .notifier)
                                      .resetTabState();
                                  AutoRouter.of(context).pushAndPopUntil(
                                      const HomeRoute(),
                                      predicate: (_) => false);
                                });
                              } catch (e) {
                                progress.dismiss();
                              }
                            }
                          }
                        },
                        child: const Text('Save'),
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
