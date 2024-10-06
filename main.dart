void main() {
  final customer = Customer("Khalid");
  customer.add(54.5);
  customer.add(12.2);
  print(customer.getPurchaseAmount());

  final loyalcustomer = LoyalCustomer("Hamad");
  loyalcustomer.add(50);
  loyalcustomer.add(50);
  print(loyalcustomer.getPurchaseAmount());
}

class Customer {
  String name;
  double _purchaseAmount = 0;

  Customer(this.name);

  void add(double price) {
    _purchaseAmount += price;
  }

  double getPurchaseAmount() {
    return _purchaseAmount;
  }
}

class LoyalCustomer extends Customer {
  LoyalCustomer(String name) : super(name);

  @override
  double getPurchaseAmount() {
    double originalAmount = super.getPurchaseAmount();
    return originalAmount - (originalAmount * 0.10);
  }
}
