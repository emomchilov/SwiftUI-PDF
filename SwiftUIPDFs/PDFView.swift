//
//  PDFView.swift
//  SwiftUIPDFs
//
//  Created by Eden Momchilov on 1/9/24.
//

import SwiftUI

struct PDFView: View {
    let info: PDFInfo
    
    var body: some View {
        VStack {
            Text(info.title)
                .font(.title)
                .padding(.vertical, 25)
            info.image
                .resizable()
                .scaledToFit()
                .padding(.horizontal, 50)

            Text(info.description)
                .multilineTextAlignment(.center)
                .padding(.vertical, 25)
                .padding(.horizontal, 40)
        }
        .frame(width: Constants.pageWidth * Constants.dotsPerInch, height: Constants.pageHeight * Constants.dotsPerInch)
    }
}

#Preview {
    PDFView(info: PDFInfo(title: "My Preview Page", image: Image("wavy_rock"), description: "This is my preview page."))
}
