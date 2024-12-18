import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(30),
            child: ListView(
              children: [
                Center(
                  child: Container(
                    width: 352,
                    height: 330,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/image_register.png'),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                //customtext
                CustomTextFormField(
                  label: 'Masukkan Email',
                ),
                CustomTextFormField(
                  label: 'Password',
                ),
                CustomTextFormField(
                  label: 'Confirmasi Password',
                ),
                SizedBox(
                  height: 52,
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        backgroundColor: Color(0xff3498Db)),
                    onPressed: () {},
                    child: Text(
                      'Mendaftar',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    Expanded(
                        child: Divider(
                      color: Color(0xffC0C0C0),
                      height: 3,
                    )),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Text(
                        'Atau daftar menggunakan',
                        style: TextStyle(color: Color(0xffC0C0C0)),
                      ),
                    ),
                    Expanded(
                        child: Divider(
                      color: Color(0xffC0C0C0),
                      height: 3,
                    )),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Material(
                  color: Colors.white,
                  child: SizedBox(
                    height: 52,
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          surfaceTintColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              side: BorderSide(color: Colors.red),
                              borderRadius: BorderRadius.circular(8)),
                          backgroundColor: Colors.white),
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 33,
                            height: 33,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/google_icon.png'))),
                          ),
                          Text(
                            'Mendaftar',
                            style: TextStyle(color: Colors.red),
                          ),
                          SizedBox()
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 49,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Sudah punya akun? Silakan '),
                    Text(
                      'Masuk',
                      style: TextStyle(color: Color(0xff3498DB)),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({super.key, required this.label});
  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 25),
      child: TextFormField(
        decoration: InputDecoration(
          label: Text(
            label,
            style: TextStyle(color: Color(0xffC0C0C0)),
          ),
          border: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xffC0C0C0))),
        ),
      ),
    );
  }
}
