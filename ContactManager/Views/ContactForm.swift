
import SwiftUI


struct ContactForm: View {
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject private var data: Data
    @State var contact: Contact = Contact()
    
    var body: some View {
        
        Form {
            TextField("Name", text: $contact.name)
            TextField("Last Name", text: $contact.lastName)
            TextField("Phone", text: $contact.phoneNumber)
                .keyboardType(.phonePad)
        }
        .navigationBarTitle("New Contact", displayMode: .inline)
        .navigationBarItems(trailing:
                                Button(action: {
                                    self.data.contacts.append(self.contact)
                                    presentationMode.wrappedValue.dismiss()
                                }, label: {
                                    Text("Save")
                                }))
    }
    
}

struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
        ContactForm(contact: Contact(name: "", lastName: "", phoneNumber: ""))
    }
}
