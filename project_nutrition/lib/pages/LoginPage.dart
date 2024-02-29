import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormBuilderState>();
  // final TextEditingController _usernameController = TextEditingController();
  // final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromRGBO(0, 145, 191, 1),
              Color.fromRGBO(0, 145, 191, 0)
            ], // Set your gradient colors here
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                // Image(
                //   image: AssetImage('assets/images/profile.png'),
                //   height: 100,
                // ),
                Text(
                  'NUTRIN',
                  style: TextStyle(
                      fontSize: 60,
                      color: Colors.white,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w900),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: FormBuilder(
                    key: _formKey,
                    initialValue: {'username': '', 'password': ''},
                    child: Column(
                      children: [
                        FormBuilderTextField(
                          name: 'username',
                          decoration: InputDecoration(
                            labelText: 'Email',
                            filled: true,
                          ),
                          validator: FormBuilderValidators.compose([
                            FormBuilderValidators.required(
                                errorText: 'Please insert email'),
                            FormBuilderValidators.email(),
                          ]),
                          keyboardType: TextInputType.emailAddress,
                        ),
                        SizedBox(height: 15),
                        FormBuilderTextField(
                          name: 'password',
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: 'Password',
                            filled: true,
                          ),
                          validator: FormBuilderValidators.compose([
                            FormBuilderValidators.required(
                                errorText: 'Please insert password'),
                            FormBuilderValidators.minLength(8,
                                errorText: 'Min length 8 characters'),
                          ]),
                        ),
                        SizedBox(height: 20),
                        SizedBox(
                          width: double.infinity,
                          child: MaterialButton(
                            onPressed: () {
                              _formKey.currentState!.save();
                              if (_formKey.currentState!.validate()) {
                                // Open Homepage (pass launcher)
                                Navigator.pushNamed(context, '/home');
                              } else {
                                print("Validation failed");
                              }
                            },
                            color: Colors.blue,
                            textColor: Colors.white,
                            child: Text("Sign In",
                                style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w300)),
                          ),
                        ),
                        SizedBox(height: 15),
                        Row(
                          children: [
                            Expanded(
                              child: MaterialButton(
                                onPressed: () {
                                  // Open Register Page
                                  Navigator.pushNamed(context, '/register');
                                },
                                child: Text(
                                  'Register User',
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w300),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
