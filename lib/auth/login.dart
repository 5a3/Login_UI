import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  GlobalKey<FormState> formkey = new GlobalKey<FormState>();
  TextEditingController username = new TextEditingController();
  TextEditingController password = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Center(
                  child: Container(
                      height: 300,
                      width: double.infinity,
                      margin: EdgeInsets.only(bottom: 0, top: 0),
                      child: Image.asset('asssets/images/scholar.png')),
                ),
                Form(
                    key: formkey,
                    child: Column(
                      children: [
                        Container(
                          child: Text(
                            "Login",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                                color: Color.fromARGB(255, 60, 116, 212)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "يرجئ ادخال اسم المستخدم";
                              }
                              return null;
                            },
                            controller: username,
                            decoration: InputDecoration(
                                prefixIcon: Icon(Icons.person),
                                labelText: "Enter UserName",
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10))),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "يرجئ ادخال كلمة المرور ";
                              }
                              return null;
                            },
                            controller: password,
                            obscureText: true,
                            decoration: InputDecoration(
                                prefixIcon: Icon(Icons.password),
                                labelText: "Enter Password",
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10))),
                          ),
                        ),
                        Container(
                            margin: EdgeInsets.only(left: 8.0),
                            child: Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 8),
                                  child: InkWell(
                                    child: Text(
                                      "Are you not have acount?",
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 95, 92, 92)),
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.of(context).pushNamed("Singup");
                                  },
                                  child: Text("Click Here",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyLarge),
                                )
                              ],
                            )),
                        Container(
                            margin: EdgeInsets.only(top: 10),
                            child: MaterialButton(
                              onLongPress: () {},
                              color: Color.fromARGB(255, 60, 116, 212),
                              onPressed: () {
                                if (formkey.currentState!.validate()) {
                                  Navigator.of(context)
                                      .pushReplacementNamed("Homepage");
                                }
                                return null;
                              },
                              child: Text(
                                "Login",
                                style: TextStyle(color: Colors.white),
                              ),
                            )),
                      ],
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
