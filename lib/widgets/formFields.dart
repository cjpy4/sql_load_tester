import 'package:flutter/material.dart';

var username;
var password;
var hostname;
var database;
var connectionsNum;
var sqlQuery;

Widget buildUsernameField() {
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
      username = value;
    },
  );
}

Widget buildPasswordField() {
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
      password = value;
    },
  );
}

Widget buildHostnameField() {
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
      hostname = value;
    },
  );
}

Widget buildDatabaseField() {
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
      database = value;
    },
  );
}

Widget buildConnectionsNumField() {
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
      connectionsNum = value;
    },
  );
}

Widget buildSqlQueryField() {
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
      sqlQuery = value;
    },
  );
}
