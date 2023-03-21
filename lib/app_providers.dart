import 'package:flutter/material.dart';
import 'package:masmasgram_ui/features/common/services/api_client.dart';
import 'package:provider/provider.dart';
import 'package:dio/dio.dart';

class AppProviders extends StatelessWidget {
  final Widget child;
  const AppProviders({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(create: (context) => Dio()),
        Provider(create: (context) => ApiClient(context.read<Dio>())),
      ],
      child: child,
    );
  }
}
