import '../../../../utils/common_import.dart';

class CommonTextFormField extends StatelessWidget {
  final String hintText;
  final String? intialValue;
  final TextEditingController? controller;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool obscureText;
  final bool hasFocus;
  final FocusNode? focusNode;
  final String? Function(String?)? validator;
  final TextInputType? textInputType;

  const CommonTextFormField({
    Key? key,
    required this.hintText,
    this.controller,
    this.prefixIcon,
    this.suffixIcon,
    this.obscureText = false,
    this.validator,
    this.hasFocus = false,
    this.focusNode,
    this.intialValue,
    this.textInputType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      focusNode: focusNode,
      obscureText: obscureText,
      validator: validator,
      initialValue: intialValue,
      keyboardType: textInputType,
      cursorColor: Theme.of(context).primaryColor,
      style: GoogleFonts.urbanist(
        color: Theme.of(context).textTheme.headlineMedium?.color,
        fontWeight: FontWeight.w600,
        letterSpacing: .2,
        fontSize: 14,
      ),
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        hintText: hintText,
      ),
    );
  }
}
