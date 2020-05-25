//
//  NetworkController.swift
//  ChefBook
//
//  Created by md760 on 22.05.2020.
//  Copyright © 2020 md760. All rights reserved.
//

import Foundation

enum NetworkError: Error {
    case invalidUrl
    case invalidResponse
    case badRequest
    case unauthorised
    case forbidden(message: String)
    case notFound
    case noConnectivity
    case unknown
}

enum HTTPMethod: String {
    case get
    case post
    case put
    case delete
}

//struct NetworkController {
//
//    typealias NetworkCallback = (Result<Data, NetworkError>) -> Void
//    private static let baseUrl = Environment.setting(.apiBaseUrl)
//
//    public static func get(endpoint: String, callback: @escaping NetworkCallback) {
//        request(endpoint: endpoint, method: .get, callback: callback)
//    }
//
//    public static func post(endpoint: String, params: [String: Any]? = nil, callback: @escaping NetworkCallback) {
//        request(endpoint: endpoint, method: .post, params: params, callback: callback)
//    }
//
//    public static func put(endpoint: String, params: [String: Any]? = nil, callback: @escaping NetworkCallback) {
//        request(endpoint: endpoint, method: .put, params: params, callback: callback)
//    }
//
//    public static func delete(endpoint: String, params: [String: Any]? = nil, callback: @escaping NetworkCallback) {
//        request(endpoint: endpoint, method: .delete, params: params, callback: callback)
//    }
//
//    private static func request(endpoint: String, method: HTTPMethod, params: [String: Any]? = nil, callback: @escaping NetworkCallback) {
//        guard let url = URL(string: "\(baseUrl)\(endpoint)") else {
//            callback(.failure(.invalidUrl))
//            return
//        }
//
////        TRAuthController.authToken { token in
////            guard let token = token else {
////                callback(.failure(.unauthorised))
////                return
////            }
//
//            var request = URLRequest(url: url)
//            request.httpMethod = method.rawValue
//            request.setValue("Bearer \(token)", forHTTPHeaderField: "Authorization")
//            request.addValue("application/json", forHTTPHeaderField: "Content-Type")
//
//            if let params = params, let body = try? JSONSerialization.data(withJSONObject: params) {
//                request.httpBody = body
//            }
//
//            let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
//                if let error = error {
//                    Logger.logNetworkError(error, endpoint: endpoint, method: method, parameters: params)
//                    callback(.failure(error.tryError))
//                    return
//                }
//                let errorMessage = "\(method.rawValue) \(endpoint)"
//                guard
//                    let response = response as? HTTPURLResponse,
//                    let data = data
//                    else {
//                        Logger.error("No data. \(errorMessage)")
//                        callback(.failure(.invalidResponse))
//                        return
//                }
//                switch response.statusCode {
//                case 200...299:
//                    callback(.success(data))
//                case 400, 403:
//                    Logger.error("Status code: \(response.statusCode). \(errorMessage)")
//                    if let json = try? JSONSerialization.jsonObject(with: data) as? [String: Any] {
//                        let message = json["message"] as? String ?? "This action couldn't be completed."
//                        callback(.failure(.forbidden(message: message)))
//                    }
//                case 401:
//                    let appDelegate = UIApplication.shared.delegate as? AppDelegate
//                    appDelegate?.sessionErrorLogout()
//                case 404:
//                    Logger.error("Status code: \(response.statusCode). \(errorMessage)")
//                    callback(.failure(.notFound))
//                default:
//                    Logger.error("Status code: \(response.statusCode). \(errorMessage)")
//                    callback(.failure(.unknown))
//                }
//            }
//
//            task.resume()
// //       }
//    }
//
//}
//extension Error {
//    var tryError: NetworkError {
//        switch code {
//        case -1001, -1005, -1009:
//            return .noConnectivity
//        default:
//            return .unknown
//        }
//    }
//}
