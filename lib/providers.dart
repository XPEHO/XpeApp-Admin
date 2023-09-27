import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:xpeapp_admin/data/state/loader_state.dart';
import 'package:xpeapp_admin/data/state/repositories/impl/login_repository_impl.dart';

// Loader
final loaderStateProvider = StateNotifierProvider<LoaderState, bool>((ref) {
  return LoaderState();
});

final loginProvider = Provider<LoginRepositoryImpl>((ref) {
  return LoginRepositoryImpl();
});

final loginStateProvider = StreamProvider<User?>((ref) {
  return ref.read(loginProvider).authStateChange;
});

final userConnectedProvider = Provider<User?>((ref) {
  return ref.watch(loginStateProvider).value;
});

final cloudFirestoreProvider = Provider<FirebaseFirestore>((ref) {
  return FirebaseFirestore.instance;
});
