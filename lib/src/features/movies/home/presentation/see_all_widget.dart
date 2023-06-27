import 'package:mova/src/l10n/app_localizations.dart';

import '../../../../utils/common_import.dart';

class RowTitle extends StatelessWidget {
  final String title;
  final void Function() onSeeAllTap;
  const RowTitle({
    Key? key,
    required this.title,
    required this.onSeeAllTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.displaySmall,
          ),
          InkWell(
            onTap: onSeeAllTap,
            child: Text(
              AppLocalizations.of(context).homeTabSeeAllButtonLabel,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 13,
                color: AppColors.primary,
              ),
            ),
          )
        ],
      ),
    );
  }
}
