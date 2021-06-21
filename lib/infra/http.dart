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
  Map<String, dynamic> _headers;

  Connection(this._http, this._url, {this.data, this.timeout});

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
    final client = HttpClient();
    client.connectionTimeout = this.timeout != null ? Duration(seconds: this.timeout) : null;
    final http = IOClient(client);
    var response = await http.get(Uri.parse(this._url), headers: this._headers);
    return returnData(response);
  }

  Future<ResponseService> _delete() async {
    final client =  HttpClient();
    client.connectionTimeout = this.timeout != null ? Duration(seconds: this.timeout) : null;
    final http =  IOClient(client);
    var response = await http.delete(Uri.parse(this._url), headers: this._headers);
    return returnData(response);
  }

  Future<ResponseService> _put() async {
    final client =  HttpClient();
    client.connectionTimeout = this.timeout != null ? Duration(seconds: this.timeout) : null;
    final http =  IOClient(client);
    var data = convert.json.encode(this.data);
    var response = await http.put(Uri.parse(this._url), headers: _headers, body: data, encoding: convert.Encoding.getByName("utf-8"));
    return returnData(response);
  }

  Future<ResponseService> _post() async {
    final client =  HttpClient();
    client.connectionTimeout = this.timeout != null ? Duration(seconds: this.timeout) : null;
    final http =  IOClient(client);
    var data = convert.json.encode(this.data);
    var response = await http.post(Uri.parse(this._url), headers: this._headers, body: data, encoding: convert.Encoding.getByName("utf-8"));
    return returnData(response);
  }

  returnData(dynamic response){
    var jsonDecode = convert.jsonDecode(response.body);
    return ResponseService(jsonDecode, response?.headers, response?.statusCode);
  }
}
