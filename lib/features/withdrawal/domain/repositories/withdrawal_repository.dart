import 'package:chainstack/core/error/either.dart';
import 'package:chainstack/core/error/x_error.dart';
import 'package:injectable/injectable.dart';

typedef DataFuture<T> = Future<Either<XError, T>>;

abstract class IWithdrawalRepository {
  DataFuture<void> send({required String toAddress, required double amountBtc});
}

@Injectable(as: IWithdrawalRepository)
class WithdrawalRepository implements IWithdrawalRepository {
  @override
  DataFuture<void> send({required String toAddress, required double amountBtc}) async {
    await Future.delayed(Duration(seconds: 1));
    return Either.right(null);
  }
}
