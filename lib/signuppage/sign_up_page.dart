import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Signuppage extends StatefulWidget {
  const Signuppage({super.key});

  @override
  State<Signuppage> createState() => _SignuppageState();
}

class _SignuppageState extends State<Signuppage> {
  final _formKey = GlobalKey<FormState>();
  final _usernameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool isPasswordVisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            context.goNamed('signinpage');
          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
      ),
      body: Column(
        children: [
          Center(
            child: Text(
              'Sign up now',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 5),
          Text(
            'Please fill the details and create an account',
            style: TextStyle(
              color: Colors.grey[800],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Form(
            key: _formKey,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextFormField(
                    controller: _usernameController,
                    // validator: (value) {
                    // if (RegExp("^[a-zA-Z0-9]+([._]?[a-zA-Z0-9]+)*$").hasMatch(value!)){
                    // return 'Invalid try again with different name';
                    // }
                    // return null;
                    // },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      hintText: 'Enter your username',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextFormField(
                    controller: _emailController,
                    validator: (value) {
                      if (!RegExp(
                              r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                          .hasMatch(value!)) {
                        return 'Invalid email';
                      }
                      return null;
                    },
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      hintText: 'Enter your email address',
                      suffixIcon: IconButton(
                        icon: Icon(Icons.clear),
                        onPressed: () {
                          _emailController.clear();
                        },
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextFormField(
                    controller: _passwordController,
                    validator: (value) {
                      if (value!.length < 8) {
                        return 'Password must be at least 8 characters';
                      }
                      return null;
                    },
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: !isPasswordVisible,
                    onChanged: (value) {},
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      hintText: '**********',
                      suffixIcon: IconButton(
                        icon: Icon(Icons.remove_red_eye),
                        onPressed: () {
                          setState(() {
                            isPasswordVisible = !isPasswordVisible;
                          });
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 5, 94, 248),
                  minimumSize: Size(double.infinity, 60),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  return context.goNamed('passwordreset');
                }
              },
              child: TextButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text("Sign Up"),
                        content: Text(
                            'Congratulations, you have successfully created an account, go to sign in page and sign in with your new account'),
                      );
                    },
                  );
                },
                child: Text(
                  'Sign Up',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          SizedBox(height: 22),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Already have an account'),
              TextButton(
                onPressed: () {
                  return context.goNamed('signinpage');
                },
                child: Text(
                  'Sign in',
                  style: TextStyle(color: Colors.blueAccent),
                ),
              )
            ],
          ),
          Text('Or Connect'),
          SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.network(
                'https://img.icons8.com/?size=96&id=uLWV5A9vXIPu&format=png',
                height: 50,
                width: 50,
                fit: BoxFit.contain,
              ),
              Image.network(
                'https://img.icons8.com/?size=96&id=Xy10Jcu1L2Su&format=png',
                height: 50,
                width: 50,
                fit: BoxFit.contain,
              ),
              Image.network(
                'https://img.icons8.com/?size=128&id=119014&format=png',
                height: 50,
                width: 50,
                fit: BoxFit.contain,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
