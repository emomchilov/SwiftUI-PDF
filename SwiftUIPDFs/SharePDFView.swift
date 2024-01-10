//
//  ContentView.swift
//  SwiftUIPDFs
//
//  Created by Eden Momchilov on 1/9/24.
//

import SwiftUI

struct SharePDFView: View {
    @State private var exportPDF: Bool = false
    var body: some View {
        VStack {
            Button(action: {
                exportPDF = true
            }, label: {
                Text("Export PDF via Share Sheet")
            })
        }
        .sheet(isPresented: $exportPDF, content: {
            /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Content@*/Text("Sheet Content")/*@END_MENU_TOKEN@*/
        })
        .padding()
    }
}

#Preview {
    SharePDFView()
}
