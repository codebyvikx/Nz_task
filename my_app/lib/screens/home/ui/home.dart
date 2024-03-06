import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_app/screens/auth/ui/loginPage.dart';
import 'package:my_app/screens/home/bloc/home_bloc.dart';
import 'package:my_app/screens/home/ui/mapPage.dart';
import 'package:my_app/screens/recording/ui/record_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final HomeBloc homeBloc = HomeBloc();
    return BlocConsumer<HomeBloc, HomeState>(
      bloc: homeBloc,
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            leading: IconButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => LoginPage()));
                },
                icon: const Icon(
                  Icons.power_settings_new_sharp,
                  color: Colors.white,
                )),
            actions: [
              IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => const RecordingPage())));
                  },
                  icon: const Icon(
                    Icons.mic,
                    size: 32,
                    color: Colors.red,
                  ))
            ],
            centerTitle: true,
            title: const Text(
              "Your Map",
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            ),
          ),
          backgroundColor: Colors.white,
          body: const Center(
              child: SizedBox(
            child: MapPage(),
          )),
        );
      },
    );
  }
}
