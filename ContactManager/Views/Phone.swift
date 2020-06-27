//
//  Phone.swift
//  ContactManager
//
//  Created by Nicolas Arias on 6/27/20.
//

import UIKit
import SwiftUI

struct Phone: View {
    var number: String
    
    var body: some View {
        Button(action: {
            guard let url = URL(string:"tel://\(self.number)") else {return}
            UIApplication.shared.open(url)
        }) {
            Text(number).foregroundColor(.blue)
        }
    }
}

struct Phone_Previews: PreviewProvider {
    static var previews: some View {
        Phone(number: "555-123-123")
    }
}
