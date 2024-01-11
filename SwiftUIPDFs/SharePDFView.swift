//
//  ContentView.swift
//  SwiftUIPDFs
//
//  Created by Eden Momchilov on 1/9/24.
//

import SwiftUI

struct SharePDFView: View {
    @Environment(\.displayScale) var displayScale
    @State private var exportPDF: Bool = false
    
    let pdfCreator = PDFCreator(multiplePages: [
        PDFInfo(title: "Page 1", image: Image("wavy_rock"), description: "This is my first PDF page. Here is a stock photo of a rock."),
        PDFInfo(title: "Page 2", image: Image("leaf"), description: "This is my first PDF page. Here is a stock photo of a leaf."),
        PDFInfo(title: "Page 3", image: Image("another_leaf"), description: "This is my first PDF page. Here is a stock photo of another leaf.")
    ])
    
    var body: some View {
        VStack {
            ShareLink(item: pdfCreator.createPDFData(displayScale: displayScale))
        }
        .padding()
    }
}

#Preview {
    SharePDFView()
}
