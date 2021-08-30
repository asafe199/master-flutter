import 'dart:convert' as convert;
import 'dart:io';
import 'package:http/io_client.dart';
import 'package:master/infra/response_service.dart';

enum HTTP {GET, POST, DELETE, PUT}

class Connection {
  final HTTP _http;
  Map<dynamic, dynamic> data;
  String _url;
  int timeout;
  Map<String, String> headers;

  Connection(this._http, this._url, {this.data, this.timeout, this.headers});

  Future<ResponseService> exec() async {
    ResponseService service;
    switch (this._http){
      case HTTP.GET:
        service = await _get();
        break;
      case HTTP.DELETE:
        service = await _delete();
        break;
      case HTTP.PUT:
        service = await _put();
        break;
      case HTTP.POST:
        service = await _post();
        break;
    }
    return service;
  }

  Future<ResponseService> _get() async {
    IOClient http = _connectHttp();
    var response = await http.get(Uri.parse(this._url), headers: headersDefault());
    return returnData(response);
  }

  Future<ResponseService> _delete() async {
    IOClient http = _connectHttp();
    var response = await http.delete(Uri.parse(this._url), headers: headersDefault());
    return returnData(response);
  }

  Future<ResponseService> _put() async {
    IOClient http = _connectHttp();
    var data = convert.json.encode(this.data);
    var response = await http.put(Uri.parse(this._url), headers: headersDefault(), body: data, encoding: convert.Encoding.getByName("utf-8"));
    return returnData(response);
  }

  Future<ResponseService> _post() async {
    IOClient http = _connectHttp();
    var data = convert.json.encode(this.data);
    var response = await http.post(Uri.parse(this._url), headers: headersDefault(), body: data, encoding: convert.Encoding.getByName("utf-8"));
    return returnData(response);
  }

  returnData(dynamic response){
    var jsonDecode = convert.jsonDecode(response.body);
    return ResponseService(jsonDecode, response?.headers, response?.statusCode);
  }

  IOClient _connectHttp(){
    final client = HttpClient();
    client.connectionTimeout = Duration(seconds: this.timeout == null ? 30 : this.timeout);
    return IOClient(client);
  }

  Map<String, dynamic> headersDefault(){
    if(this.headers == null){
      this.headers = Map();
      this.headers['Content-type'] = "application/json; charset=utf-8";
    }
    return this.headers;
  }
}
