import 'dart:math';

final String apiUrl = 'http://localhost:8000/api';

enum MESES {
  janeiro,
  fevereiro,
  marco,
  abril,
  maio,
  junho,
  julho,
  agosto,
  setembro,
  outubro,
  novembro,
  dezembro,
}

String getMes(int mes) {
  bool ehMarco = mes == 3;
  return MESES.values[mes - 1]
      .toString()
      .split('.')
      .last
      .replaceAll(ehMarco ? 'c' : '', ehMarco ? 'ç' : '');
}
