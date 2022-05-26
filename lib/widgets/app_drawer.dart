import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// import '../screens/contact_us.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
      children: [
        AppBar(
          elevation: 0,
          title: const Text('تطبيق مطر'),
          // automaticallyImplyLeading: false //don't display back button
          backgroundColor: const Color(0xff426981),
        ),
        Expanded(
          child: ListView(
            children: <Widget>[
              _buildDivider(),
              ListTile(
                leading: const FaIcon(
                  FontAwesomeIcons.circleXmark,
                  color: Colors.blueGrey,
                ),
                title: const Text('إزالة الإعلانات'),
                trailing: const Icon(Icons.arrow_forward_ios),
                onTap: () {
                  // Navigator.of(context).pushReplacementNamed('/');
                },
              ),
              _buildDivider(),
              ListTile(
                leading: const Icon(Icons.info_outline, size: 30),
                title: const Text('عن التطبيق'),
                trailing: const Icon(Icons.arrow_forward_ios),
                onTap: () {
                  // Navigator.of(context)
                  //     .pushReplacementNamed(ContactUsScreen.routeName);
                },
              ),
              _buildDivider(),
              ListTile(
                leading: const FaIcon(
                  FontAwesomeIcons.envelopeOpen,
                  color: Colors.blueGrey,
                ),
                title: const Text('تواصل معنا'),
                trailing: const Icon(Icons.arrow_forward_ios),
                onTap: () {
                  // Navigator.of(context)
                  //     .pushReplacementNamed(ContactUsScreen.routeName);
                },
              ),
              _buildDivider(),
            ],
          ),
        ),
        // Container(
        //     // This align moves the children to the bottom
        //     child: Align(
        //         alignment: FractionalOffset.bottomCenter,
        //         // This container holds all the children that will be aligned
        //         // on the bottom and should not scroll with the above ListView
        //         child: Container(
        //           child: Column(
        //             children: <Widget>[
        //               Divider(),
        //               ListTile(
        //                 leading: Icon(
        //                   Icons.logout,
        //                   color: Theme.of(context).primaryColorDark,
        //                 ),
        //                 title: Text(AppLocalizations.of(context).logout),
        //                 onTap: () async {
        //                   //1- close the drawer
        //                   Navigator.of(context).pop();
        //                   await context.read<AuthService>().signOut();
        //                 },
        //               ),
        //             ],
        //           ),
        //         ))),
      ],
    ));
  }

  Container _buildDivider() {
    return Container(
      // margin: const EdgeInsets.symmetric(horizontal: 16),
      width: 200,
      height: 1.0,
      color: Colors.blueGrey.shade100,
    );
  }
}
