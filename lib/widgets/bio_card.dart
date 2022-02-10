import 'package:flutter/material.dart';

class BioCard extends StatelessWidget {
  const BioCard({
    Key? key,
    required this.leadingIcon,
    required this.title,
    required this.subtitle,
    required this.trailingIcon,
    required this.onPressed,
    this.marginBottom=0,


  }) : super(key: key);
  final IconData leadingIcon;
  final String title;
  final String subtitle;
  final IconData trailingIcon;
  final double marginBottom;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20)
      ),
      margin:  EdgeInsetsDirectional.only(
        start: 20,
        end: 20,
        bottom: marginBottom,
      ),
      child: ListTile(
          leading:  Icon(leadingIcon),
          title:  Text(title,
            style:  TextStyle(
                fontFamily: 'SourceSansPro',
                color: Colors.pink[900],
                fontWeight: FontWeight.bold,
              fontSize: 20,
            ),

          ),
          subtitle:  Text(subtitle,
            style:  const TextStyle(
              fontFamily: 'SourceSansPro',
              color: Colors.black,
              fontSize: 18,
            ),
          ),
          trailing: IconButton(onPressed:onPressed,
              icon:  Icon(trailingIcon))
      ),
    );
  }
}
