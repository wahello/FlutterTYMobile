import 'package:dartz/dartz.dart' show Either, Left, Task;
import 'package:flutter_ty_mobile/core/error/failures.dart';
import 'package:flutter_ty_mobile/mylogger.dart';

///Catches [Failure] in a way like catching Exception
///[Failure] will show up as Left(Object) after throw from the Future task
///
/// No longer need to throw an [Exception] then catch and convert it into [Failure]
/// unless the task has the need to trace error stack.
extension TaskX<T extends Either<Object, U>, U> on Task<T> {
  Task<Either<Failure, U>> mapLeftToFailure() {
    return this.map(
      (either) => either.leftMap((obj) {
        try {
          return obj as Failure;
        } catch (e) {
          throw obj;
        }
      }),
    );
  }
}

/// Takes in [T] type [Future], and wrapped it with [Task] method's boilerplate.
/// Though the return type is [dynamic], the Right value type will be [T] when
/// call [Future].then(...) to get the task result.
Future<Either<Failure, dynamic>> runTask<T>(Future<T> future) {
  return Task<T>(() => future)
      .attempt()
      .mapLeftToFailure()
      .run()
      .catchError((e) {
    print('task has exception: $e');
    MyLogger.error(msg: 'task has exception: $e', tag: 'TaskX', stackTrace: e);
    return Left(Failure.internal());
  });
}
