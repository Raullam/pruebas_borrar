import 'package:flutter/material.dart';
import 'package:follada2/providers/theme_provider.dart';
import 'package:provider/provider.dart';

class PaginaLogin extends StatefulWidget {
  const PaginaLogin({super.key});

  @override
  State<PaginaLogin> createState() => _PaginaLoginState();
}

class _PaginaLoginState extends State<PaginaLogin> {
  @override
  Widget build(BuildContext context) {
    final temaProvider = Provider.of<ThemeProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina de Login'),
        actions: [
          IconButton(
            icon: Icon(
              temaProvider.temaActual == ThemeData.dark()
                  ? Icons.wb_sunny
                  : Icons.nights_stay,
            ),
            onPressed: () {
              temaProvider.temaActual == ThemeData.dark()
                  ? temaProvider.setModeDia()
                  : temaProvider.setModeNit();
            },
          )
        ],
      ),
    );
  }
}
