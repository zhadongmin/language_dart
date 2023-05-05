// 流程控制语句
var func = '流程控制语句';
var year = 2023;
var zdm = [1996, 2002, 2008, 2011, 2014, 2018, 2023];
void judgeCentury(year) {
  if (year >= 2001) {
    print('21st century');
  } else if (year >= 1901) {
    print('20st century');
  }
}

void livedThroughYears({currentYear, bornYear = 1996}) {
  for (int i = bornYear; i <= currentYear; i++) {
    print('现在是$i年。又活了一年，活了${i - bornYear + 1}年 ,已经很棒啦。');
  }
}

void flatObject(obj) {
  for (final item in obj) {
    print(item);
  }
}

void main() {
  print(func);
  judgeCentury(year);
  livedThroughYears(currentYear: year);
  flatObject(zdm);
}
