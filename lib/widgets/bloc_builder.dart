import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teste_green/blocs/user_bloc.dart';
///Widget responsável por mostrar TopRate com usuários do GitHub.
Widget blocBuilder() {
  return BlocBuilder<UserBloc, UserState>(
    builder: (context, state) {
      if (state is InitialState) {
        return Center(
          child: Text("Carregando..."),
        );
      } else if (state is LoadingState) {
        return Center(child: CircularProgressIndicator());
      } else if (state is LoadedSucessState) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                    padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                    width: MediaQuery.of(context).size.height * 0.45,
                    height: MediaQuery.of(context).size.height * 0.3,
                    child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: state.album.length,
                        //itemCount: 2,
                        itemBuilder: (BuildContext context, int index) {
                          return Card(
                            color: Colors.grey[200],
                            child: Container(
                                height: 80.0,
                                child: Row(
                                  children: [
                                    Row(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 5,
                                              right: 10,
                                              bottom: 5,
                                              top: 5),
                                          child: Card(
                                            color: Color.fromRGBO(
                                                230, 230, 230, 1),
                                            child: InkWell(
                                              child: Center(
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: <Widget>[
                                                    Image.network(
                                                      state.album[index]
                                                          .avatar_url,
                                                      width: 60,
                                                    ),
                                                    SizedBox(
                                                      width: 60,
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width: 6,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Text(
                                          state.album[index].login,
                                          style: TextStyle(
                                              fontFamily: 'Poppins-ExtraLight',
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20.0),
                                        ),
                                        SizedBox(
                                          height: 3,
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              "id: " +
                                                  state.album[index].id
                                                      .toString(),
                                              style: TextStyle(
                                                  fontFamily:
                                                      'Poppins-ExtraLight',
                                                  color: Colors.grey[800],
                                                  fontWeight: FontWeight.w300,
                                                  fontSize: 14.0),
                                            ),
                                            SizedBox(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.20,
                                            ),
                                            Icon(
                                              Icons.star,
                                              color: Colors.amber,
                                              size: 20,
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              "4.5",
                                              style: TextStyle(
                                                  fontFamily:
                                                      'Poppins-ExtraLight',
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w300,
                                                  fontSize: 10.0),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Container(
                                              width: 2,
                                              height: 14,
                                              color: Colors.grey[300],
                                            ),
                                            Icon(
                                              Icons.location_on,
                                              color: Colors.amber,
                                              size: 20,
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              "5.3 km",
                                              style: TextStyle(
                                                  fontFamily:
                                                      'Poppins-ExtraLight',
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w300,
                                                  fontSize: 10.0),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ],
                                )),
                          );
                        })),
              ],
            )
          ],
        );
      } else if (state is ErrorState) {
        return Center(child: Text("Erro ao carregar"));
      }
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Carregando...',
            ),
          ],
        ),
      );
    },
  );
}
