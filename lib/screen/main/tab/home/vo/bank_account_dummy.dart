import 'package:fast_app_base/screen/main/tab/home/vo/banks_dummy.dart';
import 'package:fast_app_base/screen/main/tab/home/vo/vo_bank_account.dart';

final bankAccountShinhan1 = BankAccount(bankShinhan, 300000, accountTypeName: "신한 주거래 우대통장(저축)");
final bankAccountShinhan2 = BankAccount(bankShinhan, 3200000, accountTypeName: "저축예금");
final bankAccountShinhan3 = BankAccount(bankShinhan, 87650, accountTypeName: "저축예금");
final bankAccountToss = BankAccount(bankToss, 2600000);
final bankAccounKakao = BankAccount(bankKaKao, 450000, accountTypeName: "입출금통장");
final bankAccountShinhan4 = BankAccount(bankShinhan, 7800000, accountTypeName: "신한 적금통장");
final bankAccountShinhan5 = BankAccount(bankShinhan, 150000, accountTypeName: "신한 급여통장");
final bankAccountKaKao2 = BankAccount(bankKaKao, 3200000, accountTypeName: "카카오 비상금");
final bankAccountKaKao3 = BankAccount(bankKaKao, 560000, accountTypeName: "카카오 여행 모으기");
final bankAccountToss2 = BankAccount(bankToss, 9700000, accountTypeName: "토스 저축통장");

final List<BankAccount> bankAccounts = [
  bankAccountShinhan1,
  bankAccountShinhan2,
  bankAccountShinhan3,
  bankAccountShinhan4,
  bankAccountShinhan5,
  bankAccountToss,
  bankAccountToss2,
  bankAccounKakao,
  bankAccountKaKao2,
  bankAccountKaKao3
];