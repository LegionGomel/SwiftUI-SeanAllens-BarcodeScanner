//
//  ContentView.swift
//  BarcodeScanner
//
//  Created by Yuri Ershov on 21.11.21.
//

import SwiftUI

struct BarcodeScannerView: View {

    @StateObject var viewModel = BarcodeScannerViewModel()
    
    var body: some View {
        // NavigationView for large navigation title
        NavigationView {
            VStack {
                // Rectangle background for barcode with specified size
                ScannerView(scannedCode: $viewModel.scannedCode, alertItem: $viewModel.alertItem)
                    .frame(maxWidth: .infinity, maxHeight: 300)
                
                Spacer().frame(height: 60)
                
                Label("Scanned Barcode:", systemImage: "barcode.viewfinder")
                    .font(.title)
                
                Text(viewModel.scannedCode.isEmpty ? "not yet scanned" : viewModel.scannedCode)
                    .bold()
                    .font(.largeTitle)
                    .foregroundColor(viewModel.scannedCode.isEmpty ? .red : .green)
                    .padding()
                
            }
            .navigationTitle("Barcode Scanner")
            .alert(item: $viewModel.alertItem) { alertItem in
                Alert(title: Text(alertItem.title),
                      message: Text(alertItem.message),
                      dismissButton: alertItem.dismissButton)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        BarcodeScannerView()
    }
}
