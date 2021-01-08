import 'package:designpluscode/constants.dart';
import 'package:flutter/material.dart';

class SidebarButton extends StatelessWidget {
  const SidebarButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: () {
        print("Sidebar pressed!");
      },
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      constraints: BoxConstraints(
        maxHeight: 40,
        maxWidth: 40,
      ),
      child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(14),
              boxShadow: [
                BoxShadow(
                  color: kShadowColor,
                  offset: Offset(0, 12),
                  blurRadius: 16,
                )
              ]),
          child: Image.asset('asset/icons/icon-sidebar.png',
              color: kPrimaryLabelColor),
          padding: EdgeInsets.symmetric(
            horizontal: 12,
            vertical: 14,
          )),
    );
  }
}
