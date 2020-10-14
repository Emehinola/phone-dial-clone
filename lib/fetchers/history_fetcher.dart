import 'package:phone/models/models.dart';

// getting all the call histories here

List<CallHistory> getCallHistories() {
  List<CallHistory> callHistories = [];
  CallHistory call;
  List<String> numbers = List<String>.generate(15, (index) {
    return '081${index}72$index${index + 3}903';
  });
  List<String> names = [
    'Honour',
    'Mike',
    'Adeola',
    'Sammy',
    'Alaba',
    'Paul',
    'JHJ',
    'Ifeoluwa',
    'Jide',
    'Bro Bayo',
    'Victoria',
    'Grand ma',
    'Joseph',
    'Tunde',
    'Bro Oke'
  ];
  numbers.forEach((element) {
    call = CallHistory(
        date: 'October 11',
        number: element,
        time: 'today',
        type: numbers.indexOf(element) % 2 == 0 ? 'missed' : 'others',
        name: names[numbers.indexOf(element)]);
    callHistories.add(call);
  });

  return callHistories;
}
