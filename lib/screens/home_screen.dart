import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teste_green/blocs/user_bloc.dart';
import 'package:teste_green/widgets/bloc_builder.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void initState() {
    super.initState();
    BlocProvider.of<UserBloc>(context).add(LoadingSucessUserEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(7, 54, 82, 1),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 15.0, left: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.menu),
                  color: Colors.white,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 40.0),
                  child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(32),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.notifications,
                            color: Colors.white,
                            size: 24,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(5.0),
                            child: Container(
                              height: 24.0,
                              width: 24.0,
                              color: Colors.white,
                              child: Image.asset('images/avatar.png'),
                            ),
                          ),
                        ],
                      )),
                ),
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          Container(
            height: MediaQuery.of(context).size.height - 100.0,
            decoration: BoxDecoration(
              color: Color.fromRGBO(230, 230, 230, 1),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(45.0),
                  topRight: Radius.circular(45.0)),
            ),
            child: Padding(
              padding: EdgeInsets.only(left: 40.0, top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: <Widget>[
                      Text('Hi, Allan',
                          style: TextStyle(
                              fontFamily: 'Poppins-ExtraLight',
                              color: Colors.black,
                              fontWeight: FontWeight.w300,
                              fontSize: 24.0)),
                      SizedBox(width: 10.0),
                    ],
                  ),
                  Text("Welcome Back",
                      style: TextStyle(
                          fontFamily: 'Poppins-ExtraLight',
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 28.0)),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                        padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        height: 50,
                        width: MediaQuery.of(context).size.width - 55.0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Search...',
                                style: TextStyle(
                                    fontFamily: 'Poppins-ExtraLight',
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15.0)),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(5.0),
                              child: Container(
                                height: 50.0,
                                width: 50.0,
                                color: Color.fromRGBO(18, 102, 89, 1),
                                child: Icon(
                                  Icons.search,
                                  color: Colors.white,
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(0, 0, 15, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('Category',
                            style: TextStyle(
                                fontFamily: 'Poppins-ExtraLight',
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0)),
                        Text('See all',
                            style: TextStyle(
                                fontFamily: 'Poppins-ExtraLight',
                                color: Colors.grey[600],
                                fontWeight: FontWeight.w500,
                                fontSize: 19.0)),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: Container(
                      padding: EdgeInsets.symmetric(),
                      height: MediaQuery.of(context).size.height * 0.16,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 5,
                          itemBuilder: (context, index) {
                            return Container(
                              width: MediaQuery.of(context).size.height * 0.15,
                              padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                              child: Card(
                                color: Color.fromRGBO(18, 102, 89, 1),
                                child: Container(
                                  child: Center(
                                      child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.medical_services,
                                          color: Colors.white),
                                      SizedBox(
                                        height: 7,
                                      ),
                                      Text('Hearth',
                                          style: TextStyle(
                                              fontFamily: 'Poppins-ExtraLight',
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15.0)),
                                      SizedBox(
                                        height: 3,
                                      ),
                                      Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.15,
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.045,
                                          color: Color.fromRGBO(29, 112, 99, 1),
                                          child: Center(
                                            child: Text('15 Doctors',
                                                style: TextStyle(
                                                    fontFamily:
                                                        'Poppins-ExtraLight',
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 8.0)),
                                          )),
                                    ],
                                  )),
                                ),
                              ),
                            );
                          }),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(0, 0, 15, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('Top rate',
                            style: TextStyle(
                                fontFamily: 'Poppins-ExtraLight',
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0)),
                        Text('See all',
                            style: TextStyle(
                                fontFamily: 'Poppins-ExtraLight',
                                color: Colors.grey[600],
                                fontWeight: FontWeight.w500,
                                fontSize: 19.0)),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  BlocListener<UserBloc, UserState>(
                    listener: (context, state) {
                      if (state is ErrorState) {
                        Scaffold.of(context).showSnackBar(
                          SnackBar(
                            content: Text(state.message),
                          ),
                        );
                      }
                    },
                    child: blocBuilder(),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
