import 'dart:convert';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class GetBrandsCall {
  static Future<ApiCallResponse> call() async {
    const ffApiRequestBody = '''
{
  "filter": {
    "condition": {
      "additionalProp1": [
        "string"
      ],
      "additionalProp2": [
        "string"
      ],
      "additionalProp3": [
        "string"
      ]
    },
    "conditionOperator": "string"
  },
  "sort": {
    "field": "string",
    "direction": "string"
  },
  "page": {
    "pageSize": 30,
    "offset": 0
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getBrands',
      apiUrl: 'https://app.verofax.com/product/list-brands',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? brands(dynamic response) => (getJsonField(
        response,
        r'''$''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class ProductsOfBrandsCall {
  static Future<ApiCallResponse> call({
    String? brandName = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'ProductsOfBrands',
      apiUrl: 'https://app.verofax.com/product/getProduct/$brandName',
      callType: ApiCallType.POST,
      headers: {
        'Accept': 'application/json',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  // Method to get the products (values) from the response
  static List<String>? products(dynamic response) => (response as Map<String, dynamic>)
      .values
      .toList();

  // Method to get the full JSON response
  static dynamic myJson(dynamic response) => getJsonField(
        response,
        r'''$''',
      );

  // Method to get the keys from the JSON response
  static List<String>? keys(dynamic response) => (response as Map<String, dynamic>)
      .keys
      .toList();
}



class GetProductDetailsCall {
  static Future<ApiCallResponse> call({
    String? id = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getProductDetails',
      apiUrl: 'https://app.verofax.com/product/get?id=$id',
      callType: ApiCallType.GET,
      headers: {
        'Accept': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static dynamic name(dynamic response) => getJsonField(
        response,
        r'''$.detail_response.name''',
      );
  static dynamic image(dynamic response) => getJsonField(
        response,
        r'''$.image_url''',
      );
  static dynamic category(dynamic response) => getJsonField(
        response,
        r'''$.category''',
      );
  static dynamic manufacturer(dynamic response) => getJsonField(
        response,
        r'''$.manufacturer''',
      );
  static dynamic sustainability(dynamic response) => getJsonField(
        response,
        r'''$.sustainability_claims''',
      );
  static dynamic brand(dynamic response) => getJsonField(
        response,
        r'''$.brand''',
      );
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
