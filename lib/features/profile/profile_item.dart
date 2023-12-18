import 'package:flutter/material.dart';
import 'package:shop_app/foundation/sp_icon.dart';

class ProfileItem extends StatelessWidget {
  String title;
  String? caption;
  String iconPath;
  ProfileItem(
      {required this.iconPath, required this.title, required this.caption}) {}

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 68,
          child: ListTile(
            leading: SPIcon(
              assetName: iconPath,
            ),
            title: Text(
              title,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            subtitle: caption != null
                ? Text(
                    caption!,
                    style: Theme.of(context).textTheme.bodySmall,
                  )
                : null,
            trailing: InkWell(
              onTap: () {},
              child: const Icon(
                Icons.chevron_right,
                size: 16,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
