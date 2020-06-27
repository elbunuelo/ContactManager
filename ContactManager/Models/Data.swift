//
//  Data.swift
//  ContactManager
//
//  Created by Nicolas Arias on 6/27/20.
//

import Foundation

final class Data: ObservableObject {
    @Published var contacts: [Contact] = [
        Contact(
            name: "Nicolas",
            lastName: "Arias",
            phoneNumber: "+525576950574"
        )
    ]
}
