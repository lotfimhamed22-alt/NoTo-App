import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes/core/constants/const_String.dart';
import 'package:notes/model/item_node_model.dart';
import 'package:notes/simple_bloc_observe.dart';
import 'package:notes/view/screens/notes.dart';
import 'package:notes/view_model/note/note_cubit.dart';

void main() async {
  await Hive.initFlutter();
  Bloc.observer = SimpleBlocObserve(); // obsereve
  Hive.registerAdapter(ItemNodeModelAdapter());
  await Hive.openBox<ItemNodeModel>(kBox);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NoteCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(brightness: Brightness.light, fontFamily: 'poppins'),
        home: Notes(),
      ),
    );
  }
}
