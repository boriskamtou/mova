import 'dart:io';

import 'package:another_flushbar/flushbar.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:mova/src/features/fill_profile/presentation/skip_or_continue_button.dart';
import 'package:mova/src/features/fill_profile/presentation/user_image.dart';
import 'package:mova/src/routing/app_router.dart';

import '../../../utils/common_import.dart';
import '../../auth/infrastructure/validation_service.dart';
import '../../auth/presentation/widgets/common_textfield.dart';
import '../application/fill_profil_notifier.dart';
import '../shared/providers.dart';

@RoutePage()
class FillProfileScreen extends StatefulHookConsumerWidget {
  const FillProfileScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _FillProfileScreenState();
}

class _FillProfileScreenState extends ConsumerState<FillProfileScreen> {
  final _formkey = GlobalKey<FormState>();
  File? _image;
  String _genderValue = 'Male';

  final _genderList = [
    'Male',
    'Female',
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final userNameController = useTextEditingController();
    final nicknameController = useTextEditingController();
    final emailController = useTextEditingController();
    final phoneController = useTextEditingController();
    ref.listen<FillProfileState>(
      fillProfileNotifier,
      (previous, next) {
        next.maybeWhen(
            orElse: () {},
            failure: (message) {
              EasyLoading.showError(message!);
            },
            success: (data) {});
      },
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fill Your Profile'),
      ),
      body: ProgressHUD(
        child: Builder(builder: (ctx) {
          return SingleChildScrollView(
            child: Form(
              key: _formkey,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
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
                          style:
                              Theme.of(context).inputDecorationTheme.hintStyle,
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
                    SkipOrContinueButtons(
                      onSkipPressed: () {},
                      onContinuePressed: () {
                        FocusScope.of(context).unfocus();
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
                            final progress = ProgressHUD.of(ctx);
                            progress!.show();
                            ref
                                .read(fillProfileNotifier.notifier)
                                .createProfile(
                                  _image!,
                                  userNameController.text,
                                  nicknameController.text,
                                  emailController.text,
                                  phoneController.text,
                                  _genderValue,
                                )
                                .then((value) {
                              progress.dismiss();
                              context.pushRoute(const HomeRoute());
                            });
                          }
                        }
                      },
                    )
                  ],
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
