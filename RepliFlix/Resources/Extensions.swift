//
//  Extensions.swift
//  RepliFlix
//
//  Created by Krystal Zhang on 9/11/22.
//

import Foundation

extension String {
    func capitalizeFirstLetter() -> String {
        return self.prefix(1).uppercased() + self.lowercased().dropFirst()
        
        
    }
    
}
