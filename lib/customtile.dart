import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {

final IconData icon;
final String text;
final Function()? onPressed;

const CustomListTile(this.icon, this.text, this.onPressed,
    {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
     padding: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 0),
     child: Container(
        decoration: BoxDecoration(
           border: Border(bottom: BorderSide(color: Colors.grey.shade400))
        ),
        child: InkWell(
          splashColor: Colors.orangeAccent,
          onTap: onPressed,
          child: SizedBox(
           height: 50,
           child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
               Row(
                  children: <Widget>[
                    Icon(icon),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(text, style: const TextStyle(
                          fontSize: 16.0
                      ),),
                    ),
                  ],
                ),
                const Icon(Icons.arrow_right)
              ],
            ),
          ),
        ),
      ),
    );
  }
}