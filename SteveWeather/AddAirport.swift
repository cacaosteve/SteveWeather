//
//  AddAirport.swift
//  SteveWeather
//
//  Created by steve on 7/24/21.
//

import SwiftUI

struct AddAirport: View {
  static let DefaultAirportIdentifierCode = "KPWM"

  @State var identifierCode = ""
  let onComplete: (String) -> Void

  var body: some View {
    NavigationView {
      Form {
        Section(header: Text("Airport Identifier")) {
          TextField("Airport Identifier", text: $identifierCode)
        }
        Section {
          Button(action: addAirport) {
            Text("Add Airport")
          }
        }
      }
      .navigationBarTitle(Text("Add Airport"), displayMode: .inline)
    }
  }

  private func addAirport() {
    onComplete(
      identifierCode.isEmpty ? AddAirport.DefaultAirportIdentifierCode : identifierCode
    )
  }
}
