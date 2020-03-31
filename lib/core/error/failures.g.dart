// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'failures.dart';

// **************************************************************************
// SuperEnumGenerator
// **************************************************************************

@immutable
abstract class Failure extends Equatable {
  const Failure(this._type);

  factory Failure.network() = Network;

  factory Failure.networkLocation() = NetworkLocation;

  factory Failure.server() = Server;

  factory Failure.dataSource() = DataSource;

  factory Failure.dataType() = DataType;

  factory Failure.cachedFile() = CachedFile;

  factory Failure.internal() = Internal;

  factory Failure.login(RequestStatusModel requestStatusModel) =
      RequestStatusModelWrapper;

  factory Failure.token() = Token;

  final _Failure _type;

//ignore: missing_return
  R when<R>(
      {@required R Function(Network) network,
      @required R Function(NetworkLocation) networkLocation,
      @required R Function(Server) server,
      @required R Function(DataSource) dataSource,
      @required R Function(DataType) dataType,
      @required R Function(CachedFile) cachedFile,
      @required R Function(Internal) internal,
      @required R Function(RequestStatusModel) login,
      @required R Function(Token) token}) {
    assert(() {
      if (network == null ||
          networkLocation == null ||
          server == null ||
          dataSource == null ||
          dataType == null ||
          cachedFile == null ||
          internal == null ||
          login == null ||
          token == null) {
        throw 'check for all possible cases';
      }
      return true;
    }());
    switch (this._type) {
      case _Failure.Network:
        return network(this as Network);
      case _Failure.NetworkLocation:
        return networkLocation(this as NetworkLocation);
      case _Failure.Server:
        return server(this as Server);
      case _Failure.DataSource:
        return dataSource(this as DataSource);
      case _Failure.DataType:
        return dataType(this as DataType);
      case _Failure.CachedFile:
        return cachedFile(this as CachedFile);
      case _Failure.Internal:
        return internal(this as Internal);
      case _Failure.Login:
        return login((this as RequestStatusModelWrapper).requestStatusModel);
      case _Failure.Token:
        return token(this as Token);
    }
  }

//ignore: missing_return
  Future<R> asyncWhen<R>(
      {@required FutureOr<R> Function(Network) network,
      @required FutureOr<R> Function(NetworkLocation) networkLocation,
      @required FutureOr<R> Function(Server) server,
      @required FutureOr<R> Function(DataSource) dataSource,
      @required FutureOr<R> Function(DataType) dataType,
      @required FutureOr<R> Function(CachedFile) cachedFile,
      @required FutureOr<R> Function(Internal) internal,
      @required FutureOr<R> Function(RequestStatusModel) login,
      @required FutureOr<R> Function(Token) token}) {
    assert(() {
      if (network == null ||
          networkLocation == null ||
          server == null ||
          dataSource == null ||
          dataType == null ||
          cachedFile == null ||
          internal == null ||
          login == null ||
          token == null) {
        throw 'check for all possible cases';
      }
      return true;
    }());
    switch (this._type) {
      case _Failure.Network:
        return network(this as Network);
      case _Failure.NetworkLocation:
        return networkLocation(this as NetworkLocation);
      case _Failure.Server:
        return server(this as Server);
      case _Failure.DataSource:
        return dataSource(this as DataSource);
      case _Failure.DataType:
        return dataType(this as DataType);
      case _Failure.CachedFile:
        return cachedFile(this as CachedFile);
      case _Failure.Internal:
        return internal(this as Internal);
      case _Failure.Login:
        return login((this as RequestStatusModelWrapper).requestStatusModel);
      case _Failure.Token:
        return token(this as Token);
    }
  }

  R whenOrElse<R>(
      {R Function(Network) network,
      R Function(NetworkLocation) networkLocation,
      R Function(Server) server,
      R Function(DataSource) dataSource,
      R Function(DataType) dataType,
      R Function(CachedFile) cachedFile,
      R Function(Internal) internal,
      R Function(RequestStatusModel) login,
      R Function(Token) token,
      @required R Function(Failure) orElse}) {
    assert(() {
      if (orElse == null) {
        throw 'Missing orElse case';
      }
      return true;
    }());
    switch (this._type) {
      case _Failure.Network:
        if (network == null) break;
        return network(this as Network);
      case _Failure.NetworkLocation:
        if (networkLocation == null) break;
        return networkLocation(this as NetworkLocation);
      case _Failure.Server:
        if (server == null) break;
        return server(this as Server);
      case _Failure.DataSource:
        if (dataSource == null) break;
        return dataSource(this as DataSource);
      case _Failure.DataType:
        if (dataType == null) break;
        return dataType(this as DataType);
      case _Failure.CachedFile:
        if (cachedFile == null) break;
        return cachedFile(this as CachedFile);
      case _Failure.Internal:
        if (internal == null) break;
        return internal(this as Internal);
      case _Failure.Login:
        if (login == null) break;
        return login((this as RequestStatusModelWrapper).requestStatusModel);
      case _Failure.Token:
        if (token == null) break;
        return token(this as Token);
    }
    return orElse(this);
  }

  Future<R> asyncWhenOrElse<R>(
      {FutureOr<R> Function(Network) network,
      FutureOr<R> Function(NetworkLocation) networkLocation,
      FutureOr<R> Function(Server) server,
      FutureOr<R> Function(DataSource) dataSource,
      FutureOr<R> Function(DataType) dataType,
      FutureOr<R> Function(CachedFile) cachedFile,
      FutureOr<R> Function(Internal) internal,
      FutureOr<R> Function(RequestStatusModel) login,
      FutureOr<R> Function(Token) token,
      @required FutureOr<R> Function(Failure) orElse}) {
    assert(() {
      if (orElse == null) {
        throw 'Missing orElse case';
      }
      return true;
    }());
    switch (this._type) {
      case _Failure.Network:
        if (network == null) break;
        return network(this as Network);
      case _Failure.NetworkLocation:
        if (networkLocation == null) break;
        return networkLocation(this as NetworkLocation);
      case _Failure.Server:
        if (server == null) break;
        return server(this as Server);
      case _Failure.DataSource:
        if (dataSource == null) break;
        return dataSource(this as DataSource);
      case _Failure.DataType:
        if (dataType == null) break;
        return dataType(this as DataType);
      case _Failure.CachedFile:
        if (cachedFile == null) break;
        return cachedFile(this as CachedFile);
      case _Failure.Internal:
        if (internal == null) break;
        return internal(this as Internal);
      case _Failure.Login:
        if (login == null) break;
        return login((this as RequestStatusModelWrapper).requestStatusModel);
      case _Failure.Token:
        if (token == null) break;
        return token(this as Token);
    }
    return orElse(this);
  }

//ignore: missing_return
  Future<void> whenPartial(
      {FutureOr<void> Function(Network) network,
      FutureOr<void> Function(NetworkLocation) networkLocation,
      FutureOr<void> Function(Server) server,
      FutureOr<void> Function(DataSource) dataSource,
      FutureOr<void> Function(DataType) dataType,
      FutureOr<void> Function(CachedFile) cachedFile,
      FutureOr<void> Function(Internal) internal,
      FutureOr<void> Function(RequestStatusModel) login,
      FutureOr<void> Function(Token) token}) {
    assert(() {
      if (network == null &&
          networkLocation == null &&
          server == null &&
          dataSource == null &&
          dataType == null &&
          cachedFile == null &&
          internal == null &&
          login == null &&
          token == null) {
        throw 'provide at least one branch';
      }
      return true;
    }());
    switch (this._type) {
      case _Failure.Network:
        if (network == null) break;
        return network(this as Network);
      case _Failure.NetworkLocation:
        if (networkLocation == null) break;
        return networkLocation(this as NetworkLocation);
      case _Failure.Server:
        if (server == null) break;
        return server(this as Server);
      case _Failure.DataSource:
        if (dataSource == null) break;
        return dataSource(this as DataSource);
      case _Failure.DataType:
        if (dataType == null) break;
        return dataType(this as DataType);
      case _Failure.CachedFile:
        if (cachedFile == null) break;
        return cachedFile(this as CachedFile);
      case _Failure.Internal:
        if (internal == null) break;
        return internal(this as Internal);
      case _Failure.Login:
        if (login == null) break;
        return login((this as RequestStatusModelWrapper).requestStatusModel);
      case _Failure.Token:
        if (token == null) break;
        return token(this as Token);
    }
  }

  @override
  List get props => const [];
}

@immutable
class Network extends Failure {
  const Network._() : super(_Failure.Network);

  factory Network() {
    _instance ??= const Network._();
    return _instance;
  }

  static Network _instance;
}

@immutable
class NetworkLocation extends Failure {
  const NetworkLocation._() : super(_Failure.NetworkLocation);

  factory NetworkLocation() {
    _instance ??= const NetworkLocation._();
    return _instance;
  }

  static NetworkLocation _instance;
}

@immutable
class Server extends Failure {
  const Server._() : super(_Failure.Server);

  factory Server() {
    _instance ??= const Server._();
    return _instance;
  }

  static Server _instance;
}

@immutable
class DataSource extends Failure {
  const DataSource._() : super(_Failure.DataSource);

  factory DataSource() {
    _instance ??= const DataSource._();
    return _instance;
  }

  static DataSource _instance;
}

@immutable
class DataType extends Failure {
  const DataType._() : super(_Failure.DataType);

  factory DataType() {
    _instance ??= const DataType._();
    return _instance;
  }

  static DataType _instance;
}

@immutable
class CachedFile extends Failure {
  const CachedFile._() : super(_Failure.CachedFile);

  factory CachedFile() {
    _instance ??= const CachedFile._();
    return _instance;
  }

  static CachedFile _instance;
}

@immutable
class Internal extends Failure {
  const Internal._() : super(_Failure.Internal);

  factory Internal() {
    _instance ??= const Internal._();
    return _instance;
  }

  static Internal _instance;
}

@immutable
class RequestStatusModelWrapper extends Failure {
  const RequestStatusModelWrapper(this.requestStatusModel)
      : super(_Failure.Login);

  final RequestStatusModel requestStatusModel;

  @override
  String toString() => 'RequestStatusModelWrapper($requestStatusModel)';
  @override
  List get props => [requestStatusModel];
}

@immutable
class Token extends Failure {
  const Token._() : super(_Failure.Token);

  factory Token() {
    _instance ??= const Token._();
    return _instance;
  }

  static Token _instance;
}
