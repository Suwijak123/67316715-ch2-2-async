enum OrderStatus{pending, shipped, delivered, cancelled}

void main(){
  OrderStatus status = OrderStatus.shipped;

  switch (status){
    case OrderStatus.pending:
    print("รอดำเนินการ");
    break;
    case OrderStatus.shipped:
    print("จัดส่งแล้ว");
    break;
    case OrderStatus.delivered:
    print("ได้รับสินค้าแล้ว");
    break;
    case OrderStatus.cancelled:
    print("ยกเลิกคำสั่งซื้อ");
    break;
  }
  print("สถานะ: ${status.name}, ลำดับ: ${status.index}");
}