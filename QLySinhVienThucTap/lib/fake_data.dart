import 'package:flutter/material.dart';
import 'package:flutter_bmi_calculator/models/SV.dart';
import 'package:flutter_bmi_calculator/models/congty.dart';

const FAKE_CONGTY= const[
  CongTy(id: 1, tencty: 'FPT Software Đà Nẵng',color: Colors.deepOrangeAccent),
  CongTy(id: 2, tencty: 'Brycen Việt Nam',color: Colors.amberAccent),
  CongTy(id: 3, tencty: 'Công ty Enclave Việt Nam',color: Colors.green),
  CongTy(id: 4, tencty: 'Công ty bData Nam',color: Colors.lime),
  CongTy(id: 5, tencty: 'Công ty phần mềm TechLife',color: Colors.blueAccent),
  CongTy(id: 6, tencty: 'Công ty Cổ phần Trực tuyến GOSU',color: Colors.grey),
  CongTy(id: 7, tencty: 'Công ty RIONLAB',color: Colors.orangeAccent),
  CongTy(id: 8, tencty: 'Công ty Phần mềm Quốc tế 3S Huế',color: Colors.red),
  CongTy(id: 9, tencty: 'FPT Telecom chi nhánh Huế',color: Colors.teal),
];
var FAKE_SV =[
  SV(
      name: 'Hồ Thị Quế Linh',
      urlImage: 'assets/images/anh1.jfif',
      ingredients: ['Mã sinh viên: 18T1021157',
                    'Lớp: K42B',
                    'Khoa: Công nghệ thông tin',
                    'Chuyên ngành: Công nghệ phần mềm',
                    'Ngày sinh:08/10/2000',
                    'Giới tính: Nữ',
                    'Số điện thoại: 0905608763',
                    'Nơi sinh: Huế',],
      congtyId: 1),
  SV(
      name: 'Ji Chang Wook',
      urlImage: 'assets/images/jiwook.jpeg',
      ingredients: ['Mã sinh viên: 18T1021158',
        'Lớp: K42B',
        'Khoa: Công nghệ thông tin',
        'Chuyên ngành: Công nghệ phần mềm',
        'Ngày sinh:15/10/2000',
        'Giới tính: Nam',
        'Số điện thoại: 0905608763',
        'Nơi sinh: Hàn Quốc',],
      congtyId: 1),
  SV(
      name: 'Song Jong Ki',
      urlImage: 'assets/images/songki.jpeg',
      ingredients: ['Mã sinh viên: 18T1021159',
        'Lớp: K42B',
        'Khoa: Công nghệ thông tin',
        'Chuyên ngành: Công nghệ phần mềm',
        'Ngày sinh:25/2/2000',
        'Giới tính: Nam',
        'Số điện thoại: 0988608763',
        'Nơi sinh: Hàn Quốc',],
      congtyId: 1),
];