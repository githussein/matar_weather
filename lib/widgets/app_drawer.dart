import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// import '../screens/contact_us.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Drawer(
          child: Column(
        children: [
          AppBar(
            leading: IconButton(
              icon: const Icon(Icons.arrow_back, size: 30,),
              onPressed: () => Navigator.of(context).pop(),
            ),
            title: const Text(
              'المزيد',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            elevation: 0,
            centerTitle: false,
            backgroundColor: const Color(0xff426981),
          ),
          Expanded(
            child: ListView(
              children: <Widget>[
                Container(height: 1, color: Colors.blueGrey.shade100),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 4),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: const [
                              Image(
                                image: AssetImage('assets/img/oman.png'),
                                height: 60,
                              ),
                              SizedBox(width: 10),
                              Text('أحمد الشبلي',
                                  overflow: TextOverflow.clip,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22,
                                      color: Color(0xff814269))),
                            ],
                          ),
                          const Icon(
                            Icons.arrow_forward_ios,
                            color: Color(0xff707070),
                          ),
                        ],
                      ),
                    ),
                    // _buildDivider(),
                  ],
                ),
                _buildDivider(),
                const AppDrawerItem('إزالة الإعلانات', 'assets/icon/close.png'),
                _buildDivider(),
                const AppDrawerItem('الكوبونات', 'assets/icon/coupon.png'),
                _buildDivider(),
                const AppDrawerItem('عن التطبيق', 'assets/icon/info.png'),
                _buildDivider(),
                const AppDrawerItem('بلغ عن مشكلة', 'assets/icon/report.png'),
                _buildDivider(),
                const AppDrawerItem('تقييم التطبيق', 'assets/icon/star.png'),
                _buildDivider(),
                const AppDrawerItem('مشاركة التطبيق', 'assets/icon/share.png'),
                _buildDivider(),
                const AppDrawerItem(
                    'تطبيق ومواقع مفيدة', 'assets/icon/globe.png'),
                _buildDivider(),
                const AppDrawerItem('تابعنا عبر وسائل التواصل الاجتماعي',
                    'assets/icon/horn.png'),
                const SizedBox(height: 4),
                Container(height: 1, color: Colors.blueGrey.shade100),
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
      )),
    );
  }

  // Widget _buildDivider() {
  //   return Column(
  //       children: [
  //         Expanded(child: Container(height: 12, color: Colors.grey.shade200)),
  //       ],
  //   );
  // }
}

Widget _buildDivider() {
  // return Container(width: 200, height: 1.0, color: Colors.blueGrey.shade100);
  return Column(
    children: [
      Container(height: 1, color: Colors.blueGrey.shade100),
      const SizedBox(height: 8),
      Container(height: 1, color: Colors.blueGrey.shade100),
    ],
  );
}

class AppDrawerItem extends StatelessWidget {
  const AppDrawerItem(this.text, this.iconPath, {Key? key}) : super(key: key);

  final String text;
  final String iconPath;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  ImageIcon(
                    AssetImage(iconPath),
                    size: 26,
                    color: const Color(0xff707070),
                  ),
                  const SizedBox(width: 10),
                  Text(text,
                      overflow: TextOverflow.clip,
                      style: const TextStyle(
                          fontSize: 20, color: Color(0xff373A3C))),
                ],
              ),
              const Icon(
                Icons.arrow_forward_ios,
                color: Color(0xff707070),
              ),
            ],
          ),
        ),
        // _buildDivider(),
      ],
    );
  }
}
