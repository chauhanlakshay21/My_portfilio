import 'package:flutter/material.dart';

import '../constants/colors.dart';

class SiteLogo extends StatefulWidget {
  const SiteLogo({super.key,this.onTap,});
  final VoidCallback? onTap;
  @override
  State<SiteLogo> createState() => _SiteLogoState();
}

class _SiteLogoState extends State<SiteLogo> {
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: widget.onTap,
      child: const Text("LC",
        style: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          decoration: TextDecoration.underline,
          color: CustomColor.yellowSecondary,
        ),),
    );
  }
}
