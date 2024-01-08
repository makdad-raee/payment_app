abstract class PaymentState{}
class PaymentInitialState extends PaymentState{}
class PaymentLoaadingState extends PaymentState{}
class PaymentSuccesesState extends PaymentState{}
class PaymentErrorState extends PaymentState{
  final String errorMessage;

  PaymentErrorState({required this.errorMessage});
}
