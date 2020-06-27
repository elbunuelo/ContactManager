//
//  ContactList.swift
//  ContactManager
//
//  Created by Nicolas Arias on 6/27/20.
//

import SwiftUI

struct ContactList: View {
    @EnvironmentObject private var data: Data
    
    var body: some View {
        NavigationView {
            VStack {
                if data.contacts.count == 0 {
                    VStack {
                        Text("You don't have any contacts yet!")
                            .foregroundColor(.secondary)
                        NavigationLink(destination: ContactForm().environmentObject(data)) {
                            Text("Create one")
                                .foregroundColor(.blue)
                        }
                    }
                } else {
                    List {
                        ForEach(data.contacts) { contact in
                            NavigationLink(destination: ContactDetail(contact: contact)) {
                                ContactRow(contact: contact)
                                
                            }
                        }
                    }.listStyle(PlainListStyle())
                }
            }
            .navigationBarTitle("Contacts", displayMode: .inline)
            .navigationBarItems(trailing: NavigationLink(destination: ContactForm().environmentObject(data)) { Text("+ New")})
        }
        
    }
}

struct ContactList_Previews: PreviewProvider {
    static var previews: some View {
        ContactList().environmentObject(Data())
    }
}
