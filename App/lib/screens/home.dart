import 'package:flutter/material.dart';
import 'package:bottomreveal/bottomreveal.dart';
import 'package:image_picker/image_picker.dart';



class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  final BottomRevealController _menuController = BottomRevealController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Página principal'),
        elevation: 0,
      ),
      body: BottomReveal(
        openIcon: Icons.add,
        closeIcon: Icons.close,
        revealWidth: 100,
        backColor: Colors.white,
        frontColor: Colors.white,
        rightContent: _buildRightMenu(),
        bottomContent: _buildBottomContent(),
        controller: _menuController,
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.1, 0.4, 0.7, 0.9],
              colors: [
                Color(0xFF3594DD),
                Color(0xFF4563DB),
                Color(0xFF5036D5),
                Color(0xFF5B16D0),
              ],
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 0.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Center(
                          child: Image(
                            image: AssetImage(
                              'assets/images/rottenAbyssinian_1.jpg',
                            ),
                            height: 300.0,
                            width: 300.0,
                          )
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        )
      ),
    );
  }

  Text _buildBottomContent() {
    return null;
  }

  Column _buildRightMenu() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        const SizedBox(height: 10.0),
        MaterialButton(
          height: 60.0,
          padding: const EdgeInsets.all(0),
          textColor: Colors.white,
          minWidth: 60,
          child: Icon(Icons.photo, size: 50,),
          color: Color(0xFF5B16D0),
          elevation: 0,
          onPressed:() {
            _menuController.close();
          },
        ),
        const SizedBox(height: 10.0),
        MaterialButton(
          height: 60.0,
          padding: const EdgeInsets.all(0),
          textColor: Colors.white,
          minWidth: 60,
          child: Icon(Icons.camera_alt, size: 30,),
          color: Color(0xFF5B16D0),
          elevation: 0,
          onPressed:() {
            _menuController.close();
          },
        ),
      ],
    );
  }


}