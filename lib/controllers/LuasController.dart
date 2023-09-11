import 'package:get/get.dart';

class LuasController extends GetxController {

  final luasPersegi = RxDouble(0.0);
  hitungLuasPersegi(double sisi) {
    luasPersegi.value = sisi * sisi;
  }

  final luasPersegiPanjang = RxDouble(0.0);
  hitungLuasPersegiPanjang(double panjang, double lebar) {
    luasPersegiPanjang.value = panjang * lebar;
  }

  final luasSegitiga = RxDouble(0.0);
  hitungLuasSegitiga(double alas, double tinggi) {
    luasSegitiga.value = 0.5 * alas * tinggi;
  }

  final luasJajarGenjang = RxDouble(0.0);
  hitungLuasJajarGenjang(double alas, double tinggi) {
    luasJajarGenjang.value = alas * tinggi;
  }

  final luasLingkaran = RxDouble(0.0);
  hitungLuasLingkaran(double jarijari) {
    print(jarijari);
    luasLingkaran.value = 22 / 7  * jarijari * jarijari;
  }
}