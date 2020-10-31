//
//  String+Ext.swift
//  YLFollowers
//
//  Created by Юлия Лопатина on 10/31/20.
//  Copyright © 2020 Юлия Лопатина. All rights reserved.
//

import Foundation

extension String {
    
    func convertToDate() -> Date? {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat    = "yyyy-MM-dd'T'HH:mm:ssZ"
        dateFormatter.locale        = Locale(identifier: "en_US_POSIX")
        dateFormatter.timeZone      = .current
        return dateFormatter.date(from: self)
        }
        
        
        func convertToDisplayFormat() -> String {
            guard let date = self.convertToDate() else { return "N/A" }
            return date.convertToMonthYearFormat()
        }
    
}
