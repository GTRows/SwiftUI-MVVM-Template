//
//  StringExtensions.swift
//  SwiftUI-MVVM-Template
//
//  Created by Fatih Acıroğlu on 5.08.2023.
//

import Foundation

extension String {
    
    func isValidEmail() -> Bool {
        // test@email.com -> true
        // test.com -> false
        
        let regex = try! NSRegularExpression(pattern: "^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$", options: .caseInsensitive)
        
        return regex.firstMatch(in: self, range: NSRange(location: 0, length: count)) != nil
        
    }
    
    func capitalizedFirstLetter() -> String {
        return prefix(1).capitalized + dropFirst()
    }

    var isNotEmpty: Bool {
        return !self.isEmpty
    }
}
