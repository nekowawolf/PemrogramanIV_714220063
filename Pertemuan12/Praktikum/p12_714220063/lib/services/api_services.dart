import 'package:dio_contact/model/contacts_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class ApiServices {
  final Dio _dio = Dio(); // Inisialisasi objek Dio
  final String _baseUrl = 'https://ulbicontacts-59a677aa5bea.herokuapp.com';

  Future<Iterable<ContactsModel>?> getAllContact() async {
    try {
      var response = await _dio.get('$_baseUrl/contacts');
      if (response.statusCode == 200) {
        final contactList = (response.data['data'] as List)
            .map((contact) => ContactsModel.fromJson(contact))
            .toList();
        return contactList;
      }
      return null;
    } on DioException catch (e) {
      debugPrint('Error fetching contacts: ${e.message}');
      return null;
    } catch (e) {
      rethrow;
    }
  }

  Future<ContactsModel?> getSingleContact(String id) async {
    try {
      var response = await _dio.get('$_baseUrl/contacts/$id');
      if (response.statusCode == 200) {
        final data = response.data;
        return ContactsModel.fromJson(data);
      }
      return null;
    } on DioException catch (e) {
      debugPrint('Error fetching single contact: ${e.message}');
      return null;
    } catch (e) {
      rethrow;
    }
  }

  Future<ContactResponse?> postContact(ContactInput ct) async {
    try {
      final response = await _dio.post(
        '$_baseUrl/insert',
        data: ct.toJson(),
      );
      if (response.statusCode == 200) {
        return ContactResponse.fromJson(response.data);
      }
      return null;
    } on DioException catch (e) {
      debugPrint('Error posting contact: ${e.message}');
      return null;
    } catch (e) {
      rethrow;
    }
  }

  Future<ContactResponse?> putContact(String id, ContactInput ct) async {
    try {
      final response = await _dio.put(
        '$_baseUrl/update/$id',
        data: ct.toJson(),
      );
      if (response.statusCode == 200) {
        return ContactResponse.fromJson(response.data);
      }
      return null;
    } on DioException catch (e) {
      debugPrint('Error updating contact: ${e.message}');
      return null;
    } catch (e) {
      rethrow;
    }
  }

  Future<ContactResponse?> deleteContact(String id) async {
    try {
      final response = await _dio.delete('$_baseUrl/delete/$id');
      if (response.statusCode == 200) {
        return ContactResponse.fromJson(response.data);
      }
      return null;
    } on DioException catch (e) {
      debugPrint('Error deleting contact: ${e.message}');
      return null;
    } catch (e) {
      rethrow;
    }
  }
}
