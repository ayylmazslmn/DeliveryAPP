//
//  NetworkManager.swift
//  Delivery
//
//  Created by Süleyman Ayyılmaz on 8.01.2024.
//

import UIKit

final class NetworkManager {
    
    static let shared = NetworkManager()
    private let cache = NSCache<NSString, UIImage>()
    
    static let baseUrl = "https://seanallen-course-backend.herokuapp.com/swiftui-fundamentals/"
    private let appetizerURL = baseUrl + "appetizers"
    private init() {}
    
    func getAppetizers(completed: @escaping (Result<[Appetizers], APError>) -> Void) {
        
        guard let url = URL(string: appetizerURL) else {
            completed(.failure(.invalidURL))
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            if let _ = error {
                completed(.failure(.unableToComplete))
                return
            }
            
            guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else {
                completed(.failure(.invalidResponse))
                return
            }
            
            guard let data = data else {
                completed(.failure(.invalidData))
                return
            }
            
            do {
                let decoder = JSONDecoder()
                let decodedResponse = try decoder.decode(AppetizersRespose.self, from: data)
                completed(.success(decodedResponse.request))
            } catch {
                completed(.failure(.invalidData))
            }
        }
        
        task.resume()
    }
    
    func downloadImage(fromURLString urlString: String, completed: @escaping( UIImage?) -> Void ) {
        let cacheKey = NSString(string: urlString)
        
        if let image = cache.object(forKey: cacheKey) {
            completed(image)
            return
        }
        
        guard let url = URL(string: urlString) else {
            completed(nil)
            
            return
            
        }
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            
            guard let data = data, let image = UIImage(data: data) else {
                completed(nil)
                return
            }
            
            self.cache.setObject(image, forKey: cacheKey)
            completed(image)
            
        }
        task.resume()   
    }
}
