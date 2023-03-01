import 'package:flutter/material.dart';

class CadastroEmpresaPage extends StatefulWidget {
  @override
  _CadastroEmpresaPageState createState() => _CadastroEmpresaPageState();
}

class _CadastroEmpresaPageState extends State<CadastroEmpresaPage> {
  final _formKey = GlobalKey<FormState>();

  String _nomeEmpresa = '';
  String _enderecoEmpresa = '';
  String _siteEmpresa = '';
  String _telefoneEmpresa = '';
  String _descricaoEmpresa = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cadastro de Empresa')),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: 'Nome da Empresa'),
              ),
              SizedBox(height: 16),
              TextFormField(
                decoration: InputDecoration(labelText: 'Endereço da Empresa'),
              ),
              SizedBox(height: 16),
              TextFormField(
                decoration: InputDecoration(labelText: 'Site da Empresa'),
              ),
              SizedBox(height: 16),
              TextFormField(
                decoration: InputDecoration(labelText: 'Telefone da Empresa'),
                onChanged: (value) {
                  _telefoneEmpresa = value;
                },
              ),
              SizedBox(height: 16),
              TextFormField(
                decoration: InputDecoration(labelText: 'Descrição da Empresa'),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // TODO: salvar dados no Firebase
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Cadastro de empresa enviado')),
                    );
                  }
                },
                child: Text('Cadastrar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
