import 'dart:convert';

class Steak {
  String daging, sayur, saus;
  double harga;
  Steak(Map<String, dynamic> data) {
    this.daging = data['daging'];
    this.sayur = data['sayur'];
    this.saus = data['saus'];
    this.harga = data['harga'];
  }
  void cetak() {
    if (sayur.isEmpty) {
      print("Steak " +
          this.daging +
          " disiram dengan saus " +
          this.saus +
          " - Rp." +
          this.harga.toString());
    } else {
      print("Steak " +
          this.daging +
          " dengan sayur " +
          this.sayur +
          " disiram dengan saus " +
          this.saus +
          " - Rp." +
          this.harga.toStringAsFixed(0));
    }
  }
}

void main() {
  //Steak steak1 = new Steak('sirloin', 'wortel', 'garlic sauce', 50000);
  var sirloinString =
      '{"daging":"sirloin","sayur":"wortel","saus":"garlic sauce","harga":50000.0}';
  var parsedSirloin = json.decode(sirloinString);
  var sirloin = Steak(parsedSirloin);
  sirloin.cetak();
  //Steak steak2 = new Steak('tenderloin', 'buncis', 'saus jamur', 70000);
  //Steak steak3 = new Steak('porterhouse', '', 'saus keju', 40000);
  //Steak steak4 = new Steak('ribeye', 'tomat', 'saus barbeque', 90000);
}
