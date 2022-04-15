import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Container(
        margin: EdgeInsets.only(top: 10),
        child: Column(
          children: [
            Container(
              alignment: Alignment.topLeft,
              child: Image(image: AssetImage('assets/bolalogin.png')),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 20),
              alignment: Alignment.topCenter,
              child: Image(image: AssetImage('assets/slmtdatang.png')),
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Container(
                      height: 50,
                      width: 180,
                      margin: EdgeInsets.only(bottom: 30),
                      //alignment: Alignment(0.0, -1.0),
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        color: Color(0xffffffff),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 20,
                              width: 20,
                              child: Image(image: AssetImage('assets/fb.png')),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Text(
                              'Facebook',
                              style: TextStyle(
                                  color: Color(0xffff364715),
                                  fontSize: 14,
                                  fontFamily: 'Poppins'),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Center(
                    child: Container(
                      height: 50,
                      width: 180,
                      margin: EdgeInsets.only(bottom: 30),
                      //alignment: Alignment(0.0, -1.0),
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        color: Color(0xffffffff),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 20,
                              width: 20,
                              child:
                                  Image(image: AssetImage('assets/google.png')),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Text(
                              'Google',
                              style: TextStyle(
                                  color: Color(0xffff364715),
                                  fontSize: 14,
                                  fontFamily: 'Poppins'),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Image(image: AssetImage('assets/ataudaftardisini.png')),
            ),
            Container(
              margin: const EdgeInsets.only(top: 30),
              padding: new EdgeInsets.all(20.0),
              child: TextFormField(
                decoration: InputDecoration(
                  //fillColor: Color(0xffF1F0F5),
                  //filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide:
                        BorderSide(color: Color(0xff364715), width: 2.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide:
                        BorderSide(color: Color(0xff364715), width: 2.0),
                  ),
                  labelText: 'Email / No. Hp',
                  labelStyle: TextStyle(
                      color: Color(0xff989898),
                      fontFamily: 'PoppinsRegular',
                      fontSize: 14),
                ),
              ),
            ),
            Container(
              padding: new EdgeInsets.only(right: 20.0, left: 20, bottom: 20),
              child: TextFormField(
                decoration: InputDecoration(
                  //fillColor: Color(0xffF1F0F5),
                  //filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide:
                        BorderSide(color: Color(0xff364715), width: 2.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide:
                        BorderSide(color: Color(0xff364715), width: 2.0),
                  ),
                  labelText: 'Kata Sandi',
                  labelStyle: TextStyle(
                      color: Color(0xff989898),
                      fontFamily: 'PoppinsRegular',
                      fontSize: 12),
                ),
              ),
            ),
            Container(
              padding: new EdgeInsets.only(right: 20.0, left: 20, bottom: 20),
              alignment: Alignment.centerRight,
              child: Text(
                'Lupa Kata Sandi?',
                style: TextStyle(
                    color: Color(0xff000000),
                    fontFamily: 'PoppinsRegular',
                    fontSize: 12),
              ),
            ),
            //Expanded(
            //  child: Container(
            //    height: 100,
            //  ),
            //),
            Container(
                margin: const EdgeInsets.only(top: 40),
                child: Center(
                  child: Container(
                    height: 50,
                    width: 220,
                    margin: EdgeInsets.only(bottom: 10),
                    //alignment: Alignment(0.0, -1.0),
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0)),
                      color: Color(0xff796512),
                      onPressed: () {},
                      child: Center(
                        child: Text(
                          'Masuk',
                          style: TextStyle(
                              color: Color(0xffffffff),
                              fontSize: 14,
                              fontFamily: 'Poppins'),
                        ),
                      ),
                    ),
                  ),
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Belum punya akun? ',
                  style: TextStyle(
                      color: Color(0xff000000),
                      fontFamily: 'PoppinsRegular',
                      fontSize: 11),
                ),
                Text(
                  'Daftar disini',
                  style: TextStyle(
                      color: Color(0xff000000),
                      fontFamily: 'Poppins',
                      fontSize: 11),
                ),
              ],
            ),
            Expanded(
              child: Container(
                height: 100,
              ),
            ),

            // Container(
            //   child: Image(
            //    image: AssetImage('assets/buttom.png'),
            //   fit: BoxFit.cover,
            //   ),
            // )
          ],
        ),
      )),
    );
  }
}