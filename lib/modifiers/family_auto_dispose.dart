import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

Future<String> fetchValue() async {
  await Future.delayed(const Duration(seconds: 3));

  return 'State will be disposed!';
}

final futureProvider =
FutureProvider.autoDispose<String>((ref) => fetchValue());

class AutoDisposePage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ref) {
    final future = ref.watch(futureProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text('AutoDispose Modifier'),
      ),
      body: Center(
        child: future.when(
          data: (value) => Padding(
            padding: EdgeInsets.all(48),
            child: Text(value.toString()),
          ),
          loading: () => const CircularProgressIndicator(),
          error: (e, stack) => Text('Error: $e'),
        ),
      ),
    );
  }
}
