import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';


class OtpInput extends StatelessWidget {
  const OtpInput({Key? key,required this.controller,required this.autoFocus, required this.validator}) : super(key: key);
  final bool autoFocus;
  final TextEditingController controller;
  final String? Function(String ?) validator;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 40,
        width: 10.w,
        child: Container(

          height: 9.h,width: 13.w,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey,width: 2),

              borderRadius: BorderRadius.circular(5)
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: 8),
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                hintText: '0',
                hintStyle: TextStyle(fontSize: 20.0, color: Colors.grey),
                counterText: '',
                focusColor: Colors.black,
              ),
              autofocus: autoFocus,
              textAlign: TextAlign.center,
              keyboardType: TextInputType.number,
              controller: controller,
              validator: validator,
              maxLength: 1,
              onChanged: (value) {
                if (value.length ==1){
                  FocusScope.of(context).nextFocus();
                }
              },
            ),
          ),
        ),
      ),
    );
  }
}
