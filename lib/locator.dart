
import 'package:glade_task/core/providers/bottom_nav_provider.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';



//register multi-providers as a single child widget and pass them to main.dart
final allProviders = <SingleChildWidget>[
  ChangeNotifierProvider(create: (_) => BottomNavProvider()),

];
