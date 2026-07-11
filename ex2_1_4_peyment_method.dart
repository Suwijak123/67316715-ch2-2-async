
abstract class PaymentMethod {
  void pay(double amount);
}


class CreditCard extends PaymentMethod {
  @override
  void pay(double amount) {
    print("ชำระเงินผ่าน บัตรเครดิต เป็นจำนวนเงิน $amount (มีค่าธรรมเนียม 3%)");
  }
}

class PromptPay extends PaymentMethod {
  @override
  void pay(double amount) {
    print("ชำระเงินผ่าน พร้อมเพย์ เป็นจำนวนเงิน $amount (ไม่มีค่าธรรมเนียม)");
  }
}

class CashOnDelivery extends PaymentMethod {
  @override
  void pay(double amount) {
    print("เลือกชำระเงินแบบ เก็บเงินปลายทาง เป็นจำนวนเงิน $amount (กรุณาเตรียมเงินสดพอดี)");
  }
}

void main() {
  print(" ระบบทดสอบการชำระเงิน (Payment System) ");

  double totalCartAmount = 3500.0;

  PaymentMethod card = CreditCard();
  PaymentMethod qr = PromptPay();
  PaymentMethod cod = CashOnDelivery();

  card.pay(totalCartAmount);
  qr.pay(totalCartAmount);
  cod.pay(totalCartAmount);
}