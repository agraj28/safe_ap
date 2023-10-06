import 'package:dio/dio.dart';
import 'package:safe_ap/resources/values/constants.dart';

class AccessTokenInterceptor extends Interceptor {
  Dio dioClient;

  AccessTokenInterceptor(this.dioClient) {
    QueuedInterceptorsWrapper(
        onError:(error,handler) async {
          onError(error, handler);
        } ,
        onRequest: (options,handler) async{
          onRequest(options, handler);
        },
        onResponse: (reponse,handler) async{
          onResponse(reponse, handler);
        }
    );

  }



  Future onError(DioError err, ErrorInterceptorHandler handler) async {
    try {
      if (_shouldRetry(err)) {
        var options = err.response!.requestOptions;
        dioClient.interceptors.requestLock.lock();
        try {
          // Request new token
          // store it in shared preference

          options.headers.clear();

          var newToken =  '' ; //new token fetched from api call

          options.headers.addAll({Constants.authHeaderKey: newToken});

          dioClient.interceptors.requestLock.unlock();
        // handler.resolve();
        } on Exception catch (exception) {
          dioClient.interceptors.requestLock.unlock();

          if (exception is DioError) {
            if (exception.response != null &&
                exception.response!.statusCode == 403) {

            }
            handler.next(exception);
          } else {
            handler.next(err);
          }
        }
      } else {
        handler.next(err);
      }
    } on Exception catch (_) {}
  }


  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    if (_isHeaderTokenEmpty(options.headers[Constants.authHeaderKey])) {
       //    var token = new token fetched from api call;
      //  options.headers.addAll({Constants.authHeaderKey: token});
      handler.next(options);
    } else {
      handler.next(options);
    }
  }


  void onResponse(Response response, ResponseInterceptorHandler handler) async {
    handler.next(response);
  }

  Future<dynamic> getNewToken() async {

    return null;
  }

  bool _isHeaderTokenEmpty(String header) {
    return header.trim().isNotEmpty
        ? header.trim().toLowerCase().contains('null'.toLowerCase())
        : true;
  }

  bool _shouldRetry(DioError error) {
    return error.error != null && error.response?.statusCode == 401;
  }

  Map<String, String> getRefreshMap(String token) {
    var refreshMap = {'refreshToken': token};
    return refreshMap;
  }
}
