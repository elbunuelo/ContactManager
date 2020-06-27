//
//  ContactRow.swift
//  ContactManager
//
//  Created by Nicolas Arias on 6/27/20.
//

import SwiftUI

struct ContactRow: View {
    var contact: Contact
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("\(contact.name) \(contact.lastName)")
            Text("\(contact.phoneNumber)")
                .foregroundColor(.gray)
                .font(.caption)
        }
    }
}

struct ContactRow_Previews: PreviewProvider {
    
    static var previews: some View {
        ContactRow(contact: Data().contacts[0])
    }
}
