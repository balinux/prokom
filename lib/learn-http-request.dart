import 'package:flutter/material.dart';
import 'package:pemrograman_komputer/services/api-service.dart';

final GlobalKey<ScaffoldState> _scaffoldState = GlobalKey<ScaffoldState>();

class LearnHttpRequest extends StatefulWidget {
  @override
  _LearnHttpRequestState createState() => _LearnHttpRequestState();
}

class _LearnHttpRequestState extends State<LearnHttpRequest> {
  bool _isLoading = false;
  ApiService _apiService = ApiService();
  // bool _isFieldNameValid;
  bool _isFieldEmailValid;
  bool _isFieldPasswordValid;
  // bool _isFieldAgeValid;
  // TextEditingController _controllerName = TextEditingController();
  TextEditingController _controllerEmail = TextEditingController();
  // TextEditingController _controllerAge = TextEditingController();
  TextEditingController _controllerPassword = TextEditingController();
  String accessToken = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldState,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          "Form Login",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                _buildTextFieldEmail(),
                _buildTextFieldPassword(),
                // _buildTextFieldAge(),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: ElevatedButton(
                    onPressed: () {
                      if (_isFieldEmailValid == null ||
                          _isFieldPasswordValid == null ||
                          !_isFieldEmailValid ||
                          !_isFieldPasswordValid) {
                        _scaffoldState.currentState.showSnackBar(
                          SnackBar(
                            content: Text("Harap isi data dengan lengkap"),
                          ),
                        );
                        return;
                      }
                      setState(() => _isLoading = true);
                      String email = _controllerEmail.text.toString();
                      String password = _controllerPassword.text.toString();
                      // Profile profile = Profile(name: name, email: email, age: age);
                      _apiService
                          .loginWithApi(email, password)
                          .then((response) {
                        setState(() => _isLoading = false);
                        print(response);
                        if (response != null) {
                          setState(() {
                            accessToken = response.token;
                          });
                          // Navigator.pop(_scaffoldState.currentState.context);
                        } else {
                          _scaffoldState.currentState.showSnackBar(SnackBar(
                            content: Text("Submit data failed"),
                          ));
                        }
                      });
                    },
                    child: Text(
                      "Login".toUpperCase(),
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    // color: Colors.blue[600],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Center(
                    child: Text("Access Token: ${accessToken ?? "-"}"),
                  ),
                )
              ],
            ),
          ),
          _isLoading
              ? Stack(
                  children: <Widget>[
                    Opacity(
                      opacity: 0.3,
                      child: ModalBarrier(
                        dismissible: false,
                        color: Colors.grey,
                      ),
                    ),
                    Center(
                      child: CircularProgressIndicator(),
                    ),
                  ],
                )
              : Container(),
        ],
      ),
    );
  }

  Widget _buildTextFieldPassword() {
    return TextField(
      controller: _controllerPassword,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        labelText: "password",
        errorText: _isFieldPasswordValid == null || _isFieldPasswordValid
            ? null
            : "Password is required",
      ),
      onChanged: (value) {
        bool isFieldValid = value.trim().isNotEmpty;
        if (isFieldValid != _isFieldPasswordValid) {
          setState(() => _isFieldPasswordValid = isFieldValid);
        }
      },
    );
  }

  Widget _buildTextFieldEmail() {
    return TextField(
      controller: _controllerEmail,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: "Email",
        errorText: _isFieldEmailValid == null || _isFieldEmailValid
            ? null
            : "Email is required",
      ),
      onChanged: (value) {
        bool isFieldValid = value.trim().isNotEmpty;
        if (isFieldValid != _isFieldEmailValid) {
          setState(() => _isFieldEmailValid = isFieldValid);
        }
      },
    );
  }
}

//   Widget _buildTextFieldAge() {
//     return TextField(
//       controller: _controllerAge,
//       keyboardType: TextInputType.number,
//       decoration: InputDecoration(
//         labelText: "Age",
//         errorText: _isFieldAgeValid == null || _isFieldAgeValid
//             ? null
//             : "Age is required",
//       ),
//       onChanged: (value) {
//         bool isFieldValid = value.trim().isNotEmpty;
//         if (isFieldValid != _isFieldAgeValid) {
//           setState(() => _isFieldAgeValid = isFieldValid);
//         }
//       },
//     );
//   }
// }
