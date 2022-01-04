//
//  BarcodeScannerViewModel.swift
//  BarcodeScanner
//
//  Created by Yuri Ershov on 4.01.22.
//

import SwiftUI

final class BarcodeScannerViewModel: ObservableObject {
    
    @Published var scannedCode = ""
    @Published var alertItem: AlertItem?
    
    
    // Computed properties
    var statusText: String {
        scannedCode.isEmpty ? "not yet scanned" : scannedCode
    }
    
    var statusTextColor: Color {
        scannedCode.isEmpty ? .red : .green
    }
    
}
