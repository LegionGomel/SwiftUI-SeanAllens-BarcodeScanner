//
//  Alert.swift
//  BarcodeScanner
//
//  Created by Yuri Ershov on 4.01.22.
//

import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    let title: Text
    let message: Text
    let dismissButton: Alert.Button
}

struct AlertContext {
    static let invalidDeviceInput = AlertItem(title: Text("Invalid Device Input"),
                                              message: Text("Something is wrong with the Camera."),
                                              dismissButton: .default(Text("Ok")))
    static let invalidScannedType = AlertItem(title: Text("Invalid Scanned Type"),
                                              message: Text("The value scanned is not valid."),
                                              dismissButton: .default(Text("Ok")))
}
