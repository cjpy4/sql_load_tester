import 'package:flutter/material.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({super.key});
  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  var _username;
  var _password;
  var _hostname;
  var _database;
  var _connectionsNum;
  var _sqlQuery;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget _buildUsernameField() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Username',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Username is Required';
        }
      },
      onSaved: (value) {
        _username = value;
      },
    );
  }

  Widget _buildPasswordField() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Password',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Password is Required';
        }
      },
      onSaved: (value) {
        _password = value;
      },
    );
  }

  Widget _buildHostnameField() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Hostname',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Hostname is Required';
        }
      },
      onSaved: (value) {
        _hostname = value;
      },
    );
  }

  Widget _buildDatabaseField() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Database Name',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Username is Required';
        }
      },
      onSaved: (value) {
        _database = value;
      },
    );
  }

  Widget _buildConnectionsNumField() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Number of User Connections to Simulate',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Number of connections is Required';
        }
      },
      onSaved: (value) {
        _connectionsNum = value;
      },
    );
  }

  Widget _buildSqlQueryField() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'SQL Query to run',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Query is Required';
        }
      },
      onSaved: (value) {
        _sqlQuery = value;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('DB Connector')),
      body: Container(
          margin: EdgeInsets.all(24),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildUsernameField(),
                _buildPasswordField(),
                _buildHostnameField(),
                _buildDatabaseField(),
                _buildConnectionsNumField(),
                _buildSqlQueryField(),
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

                      print(_username);
                      print(_password);
                      print(_hostname);
                      print(_database);
                      print(_connectionsNum);
                      print(_sqlQuery);
                    },
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
