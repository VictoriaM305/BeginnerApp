//
//  DateFormatter+Extensions.swift
//  lab-insta-parse
//
//  Created by Victoria Mckinnie on 09/21/24.
//

import Foundation

extension DateFormatter {
    static var postFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .full
        return formatter
    }()
}
