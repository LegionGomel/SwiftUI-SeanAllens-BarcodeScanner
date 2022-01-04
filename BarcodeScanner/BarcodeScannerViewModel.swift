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
    
}
