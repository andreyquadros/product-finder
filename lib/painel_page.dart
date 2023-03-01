import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Controllers/HomeController.dart';

class PainelPage extends StatefulWidget {
  const PainelPage({Key? key}) : super(key: key);

  @override
  State<PainelPage> createState() => _PainelPageState();
}

class _PainelPageState extends State<PainelPage> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
        init: HomeController(),
        builder: (_) {
          return Scaffold(
              appBar: AppBar(
                title: Text('Painel Administrativo'),
              ),
              drawer: Drawer(
                child: ListView(
                  padding: EdgeInsets.zero,
                  children: [
                    DrawerHeader(
                      child: Text('Usuário autenticado: ${_.userEmail}',
                          style: TextStyle(color: Colors.white)),
                      decoration: BoxDecoration(color: Colors.blue),
                    ),
                    ListTile(
                      leading: Icon(Icons.home, color: Colors.blue),
                      title: Text('Página inicial',
                          style: TextStyle(color: Colors.blue)),
                      onTap: () => _.goToPage(0),
                      selected: _.currentPage == 0,
                      selectedTileColor: Colors.blue.withOpacity(0.1),
                    ),
                    ListTile(
                      leading: Icon(Icons.add_business, color: Colors.blue),
                      title: Text('Cadastrar Nova Empresa',
                          style: TextStyle(color: Colors.blue)),
                      onTap: () => _.goToPage(1),
                      selected: _.currentPage == 1,
                      selectedTileColor: Colors.blue.withOpacity(0.1),
                    ),
                    ListTile(
                      leading:
                          Icon(Icons.add_shopping_cart, color: Colors.blue),
                      title: Text('Cadastrar Novo Produto',
                          style: TextStyle(color: Colors.blue)),
                      onTap: () => _.goToPage(2),
                      selected: _.currentPage == 2,
                      selectedTileColor: Colors.blue.withOpacity(0.1),
                    ),
                    ListTile(
                      leading: Icon(Icons.settings, color: Colors.blue),
                      title: Text('Configurações',
                          style: TextStyle(color: Colors.blue)),
                      onTap: () => _.goToPage(3),
                      selected: _.currentPage == 3,
                      selectedTileColor: Colors.blue.withOpacity(0.1),
                    ),
                    ListTile(
                      leading: Icon(Icons.help_outline, color: Colors.blue),
                      title:
                          Text('Ajuda', style: TextStyle(color: Colors.blue)),
                      onTap: () => _.goToPage(4),
                      selected: _.currentPage == 4,
                      selectedTileColor: Colors.blue.withOpacity(0.1),
                    ),
                  ],
                ),
              ));
        });
  }
}
