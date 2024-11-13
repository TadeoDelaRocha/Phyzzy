import 'package:flutter_riverpod/flutter_riverpod.dart';

final subjectIdProvider = StateProvider<String>((ref) {
  return 'default-question-id'; 
});