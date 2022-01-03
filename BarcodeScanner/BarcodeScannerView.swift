//
//  ContentView.swift
//  BarcodeScanner
//
//  Created by Yuri Ershov on 21.11.21.
//

import SwiftUI

struct BarcodeScannerView: View {
    
    @State private var scannedCode = ""
    var body: some View {
        // NavigationView for large navigation title
        NavigationView {
            VStack {
                // Rectangle background for barcode with specified size
                ScannerView(scannedCode: $scannedCode)
                    .frame(maxWidth: .infinity, maxHeight: 300)
                
                Spacer().frame(height: 60)
                
                Label("Scanned Barcode:", systemImage: "barcode.viewfinder")
                    .font(.title)
                
                Text(scannedCode.isEmpty ? "not yet scanned" : scannedCode)
                    .bold()
                    .font(.largeTitle)
                    .foregroundColor(scannedCode.isEmpty ? .red : .green)
                    .padding()
                
            }
            .navigationTitle("Barcode Scanner")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        BarcodeScannerView()
    }
}
