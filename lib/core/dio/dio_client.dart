import 'package:clean_arch_with_riverpod/config/dependency_injection/dependency_injection.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final dioProvider = Provider((ref) => getIt<Dio>());
