import 'package:flutter/material.dart';
import 'widgets/formFields.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({super.key});
  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DB Connector'),
        leading: Text(' Test text'),
      ),
      body: Container(
        margin: EdgeInsets.all(24),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildUsernameField(),
              buildPasswordField(),
              buildHostnameField(),
              buildDatabaseField(),
              buildConnectionsNumField(),
              buildSqlQueryField(),
              SizedBox(height: 100),
              SizedBox(
                height: 70,
                width: 250,
                child: ElevatedButton(
                  child: Text(
                    'Run Test',
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                  onPressed: () {
                    if (!_formKey.currentState!.validate()) {
                      return;
                    }
                    _formKey.currentState!.save();

                    print(username);
                    print(password);
                    print(hostname);
                    print(database);
                    print(connectionsNum);
                    print(sqlQuery);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
