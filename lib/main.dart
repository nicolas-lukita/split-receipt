import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:split_receipt/helpers/hydrated_bloc_storage.dart';
import 'package:split_receipt/initializer/initializer_builder.dart';

void main() async {
  // ignore: unused_local_variable
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  final storage = await HydratedStorage.build(
    storageDirectory: kIsWeb
        ? HydratedStorageDirectory.web
        : HydratedStorageDirectory((await getTemporaryDirectory()).path),
  );
  final hydratedStorage = HydratedBlocStorage(storage);
  HydratedBloc.storage = hydratedStorage;
  runApp(const InitializerBuilder());
}
