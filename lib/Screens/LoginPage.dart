import 'package:flutter/material.dart';
//import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';

/*
  if (kIsWeb) {
    // initialiaze the facebook javascript SDK
    FacebookAuth.instance.webInitialize(
      appId: "1329834907365798",
      cookie: true,
      xfbml: true,
      version: "v11.0",
    );
  }

String prettyPrint(Map json) {
  JsonEncoder encoder = new JsonEncoder.withIndent('  ');
  String pretty = encoder.convert(json);
  return pretty;
}
*/
class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Container(
            child: Column(
              children: <Widget>[
                Spacer(),
                Text("Login",style: TextStyle(fontSize: 20),),
                Spacer(),
                CustomEmailFilled(),
                Spacer(),
                CustomPasswordFilled(),
                Spacer(), 
                Text("Forget Password ?"),
                Spacer(),
                LoginButton(),
                Spacer(),
                Text("Sign in With")
                Spacer(),
                Row(children: [GSigin(),FbSign()],),
                SizedBox(),
                Row(children: [Text("Don't have an account"),TextButton(onPressed: (){}, child: Text(SIGN UP))])
              ],
            ),
          ),
        ),
      ),
    );
  }
}
