//
//  ContactManagerApp.swift
//  ContactManager
//
//  Created by Nicolas Arias on 6/27/20.
//

import SwiftUI

@main
struct ContactManagerApp: App {
    var body: some Scene {
        WindowGroup {
            ContactList().environmentObject(Data())
        }
    }
}
