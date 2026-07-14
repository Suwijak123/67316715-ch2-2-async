import 'dart:async'; 

void main() {

  StreamController<String> controller = StreamController<String>();

  print("เริ่มระบบแจ้งเตือน...");


  controller.stream.listen(
    (message) {
      print(" แจ้งเตือนใหม่: $message");
    },
    onDone: () {
      
      print(" ปิดระบบแจ้งเตือน ");
    },
  );

  
  controller.add("มีผู้ติดตามคุณเพิ่มขึ้น");
  controller.add("สินค้าของคุณถูกจัดส่งแล้ว");
  controller.add("อย่าลืมเช็กอินรับรางวัลประจำวัน");

  
  controller.close();
}