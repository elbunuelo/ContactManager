//
//  ContactDetail.swift
//  ContactManager
//
//  Created by Nicolas Arias on 6/27/20.
//

import SwiftUI

struct ContactDetail: View {
    var contact: Contact
    
    var body: some View {
        List {
                HStack {
                    Text("Name:").fontWeight(.bold)
                    Spacer()
                    Text("\(contact.name)")
                    
                }.padding()
                HStack {
                    Text("Last Name:").fontWeight(.bold)
                    Spacer()
                    Text("\(contact.lastName)")
                    
                }.padding()
                HStack {
                    Text("Phone:").fontWeight(.bold)
                    Spacer()
                    Phone(number: contact.phoneNumber)
                    
                }.padding()
            }.navigationBarTitle(Text("\(contact.name) \(contact.lastName)"), displayMode: .inline)
    }
}

struct ContactDetail_Previews: PreviewProvider {
    static var previews: some View {
        ContactDetail(contact: Contact(name: "Nicolas", lastName: "Arias", phoneNumber: "+525576950574"))
    }
}
