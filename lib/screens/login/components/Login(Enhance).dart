import 'package:flutter/material.dart';
import 'package:local_auth/local_auth.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final LocalAuthentication _localAuthentication = LocalAuthentication();

  String _authStatus = '';

  Future<void> _authenticate() async {
    bool authenticated = false;

    try {
      authenticated = await _localAuthentication.authenticate(
        biometricOnly: true,
        localizedReason: 'Please authenticate to access the app',
        useErrorDialogs: true,
        stickyAuth: true,
      );
    } catch (e) {
      print('Error authenticating: $e');
    }

    if (!mounted) return;

    setState(() {
      if (authenticated) {
        _authStatus = 'Authenticated successfully';
      } else {
        _authStatus = 'Authentication failed';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Enter your email',
                  labelText: 'Email',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Enter your password',
                  labelText: 'Password',
                ),
                obscureText: true,
              ),
            ),
            RaisedButton(
              onPressed: _authenticate,
              child: Text('Login with fingerprint'),
            ),
            SizedBox(height: 20),
            Text(_authStatus),
          ],
        ),
      ),
    );
  }
}