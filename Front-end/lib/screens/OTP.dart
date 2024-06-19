import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:guardi_app/services/otp_service.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'medicalInfo.dart';

class otp extends StatefulWidget {
  final String email;

  const otp({Key? key, required this.email}) : super(key: key);

  @override
  _OtpScreenState createState() => _OtpScreenState();
}

class _OtpScreenState extends State<otp> {
  final TextEditingController otpController1 = TextEditingController();
  final TextEditingController otpController2 = TextEditingController();
  final TextEditingController otpController3 = TextEditingController();
  final TextEditingController otpController4 = TextEditingController();

  verifyOtp() async {
    final otp = otpController1.text + otpController2.text + otpController3.text + otpController4.text;

    if (otp.length == 4) {
        try {
          await OtpService.verifyOtp(widget.email, otp);
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('OTP verified successfully')));
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) => Medical(),
              ));
        }catch(e){
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(e.toString())));
        }
    }else{
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Please enter the OTP')));
    }
  }

  resendCode() async{
    try {
      http.Response response = await OtpService.resendCode(widget.email);
      print(response.body);
      print(response.statusCode);
      if (response.statusCode == 201) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Verification code resent successfully')));
      } else {
        final responseBody = json.decode(response.body);
        final errorMessage = responseBody['error'] ?? 'Failed to resend verification code';
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(errorMessage)));
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Failed to resend verification code')));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          "Email Verification",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF7D7D7D), Color(0x00FFFFFF)],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            tileMode: TileMode.clamp,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(35.0),
          child: Column(
            children: [
              Text(
                "Please enter the verification code sent to this email ${widget.email}",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 68,
                    width: 62,
                    child: TextFormField(
                      controller:otpController1,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.green,
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      onChanged: (val) {
                        if (val.length == 1) {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.bold),
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 68,
                    width: 62,
                    child: TextFormField(
                      controller:otpController2,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.green,
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      onChanged: (val) {
                        if (val.length == 1) {
                          FocusScope.of(context).nextFocus();
                        }
                        if (val.isEmpty) {
                          FocusScope.of(context).previousFocus();
                        }
                      },
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.bold),
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 68,
                    width: 62,
                    child: TextFormField(
                      controller: otpController3,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.green,
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      onChanged: (val) {
                        if (val.length == 1) {
                          FocusScope.of(context).nextFocus();
                        }
                        if (val.isEmpty) {
                          FocusScope.of(context).previousFocus();
                        }
                      },
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.bold),
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 68,
                    width: 62,
                    child: TextFormField(
                      controller: otpController4, // Add this line
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.green,
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      onChanged: (val) {
                        if (val.isEmpty) {
                          FocusScope.of(context).previousFocus();
                        }
                      },
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.bold),
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Didn’t receive code? ",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      resendCode();
                      },
                    child: Text(
                      "Resend code",
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 15,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 40,
              ),
              ElevatedButton(
                onPressed: verifyOtp, // Verify OTP
                child: Text(
                  "Verify",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  padding: EdgeInsets.only(left: 100, right: 100, top: 10, bottom: 10),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
